library(httr2)
library(jsonlite)
library(purrr)

topics <- readLines("articles_metadata/topics.txt")
tags <- readLines("articles_metadata/tags.txt") |> 
  strsplit(split = ", ")
categories <- readLines("articles_metadata/categories.txt")
tags1 <- purrr::map(tags, 1)
tags2 <- purrr::map(tags, 2)


# En-tête YAML
yaml_header <- function(title, category, post_tag1, post_tag2) {
  paste0(
    "---\n",
    "title: \"", title, "\"\n",
    "menu_order: 1\n",
    "post_status: publish\n",
    "taxonomy:\n",
    "    category:\n",
    "        - ", category, "\n",
    "    post_tag:\n",
    "        - ", post_tag1, "\n",
    "        - ", post_tag2, "\n",
    "---\n\n"
  )
}


# Fonction pour générer un article via l'API OpenAI (gpt-4-turbo) en utilisant une liste
generate_article <- function(topic, category, tag1, tag2, api_key = Sys.getenv("OPENAI_API_KEY"), max_tokens = 800, temperature = .7) {
  if(api_key == "") stop("api_key is missing")
  
  file_name <- paste0(gsub(" ", "_", tolower(topic)), ".md")
  if(file.exists(file.path("_drafts", file_name)) | file.exists(file.path("new_posts", file_name))) {
    cli::cli_alert_warning(paste("Article", topic, "déjà présent dans le dossier _drafts ou new_posts, on le passe\n\n"))
    return(FALSE)
  }
  
  cli::cli_alert_info(paste("Article à venir", topic, "\n\n"))
  
  
  Sys.sleep(1)

  # Construction de la requête à l'API d'OpenAI avec gpt-4-turbo
  response <- request("https://api.openai.com/v1/chat/completions") %>%
    req_headers(
      Authorization = paste("Bearer", api_key),
      "Content-Type" = "application/json"
    ) %>%
    req_body_json(list(
      model = "gpt-4o-mini",
      messages = list(
        list(role = "system", content = "You are a helpful assistant that writes articles in R."),
        list(role = "user", content = paste0("Écris un court article en R sur le sujet suivant : ", topic, ". L'article doit être concret, facile à comprendre, avec un exemple de code R et des explications simples. Pas d'images, uniquement du texte. Des noms de paramètres tous en minuscules. Pas d'utilisation de la fonction print pour afficher les objets"))
      ),
      max_tokens = max_tokens,
      temperature = temperature
    )) %>%
    req_perform()
  
  # Récupération de la réponse de l'API
  api_result <- resp_body_json(response)$choices[[1]]$message$content
  
  # Structure de l'article avec le YAML header
  article_title <- topic
  
  # Génération de l'article complet sans le titre dans le corps de l'article
  article <- paste0(
    yaml_header(article_title, category, tag1, tag2),
    api_result, "\n"
  )

  writeLines(article, con = file.path("_drafts", file_name))
  
  cli::cli_alert_success(paste("Article créé avec succès :", file_name, "\n\n"))
  
  return(TRUE)
}

index <- 1:length(topics)
gpt_res <- pmap(list(topics[index], categories[index],  tags1[index], tags2[index]), function(.topic, .category, .tag1, .tag2) {
  generate_article(topic = .topic, category = .category, tag1 = .tag1, tag2 = .tag2, temperature = .3)
}, .progress = TRUE)
names(gpt_res) <- topics
