## ----setup, include=FALSE, message=FALSE, warning=FALSE-----------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  warning = FALSE,
  message = FALSE,
  eval = FALSE,
  fig.retina = 3,
  comment = "#>"
)

## -----------------------------------------------------------------------------
# install.packages("surveydown")

## -----------------------------------------------------------------------------
# # install.packages("pak")
# pak::pak('surveydown-dev/surveydown')

## -----------------------------------------------------------------------------
# library(surveydown)

## -----------------------------------------------------------------------------
# surveydown::sd_version()

## -----------------------------------------------------------------------------
# sd_question(
#   type  = 'mc',
#   id    = 'penguins',
#   label = "Which is your favorite type of penguin?",
#   option = c(
#     'Adélie'    = 'adelie',
#     'Chinstrap' = 'chinstrap',
#     'Gentoo'    = 'gentoo'
#   )
# )

