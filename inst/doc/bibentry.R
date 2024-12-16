## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(dataset)
iris_dataset_2 <- iris_dataset

## ----get-title----------------------------------------------------------------
dataset_title(iris_dataset)

## ----change-title-------------------------------------------------------------
dataset_title(iris_dataset_2, overwrite=TRUE) <- "The Famous Iris Dataset"
get_bibentry(iris_dataset_2)

## ----creator------------------------------------------------------------------
creator(iris_dataset)

## ----creator-modify-----------------------------------------------------------
iris_dataset_2 <- iris_dataset
# Add a new creator, with overwriting existing authorship information:
creator(iris_dataset_2, overwrite=TRUE) <- person("Jane", "Doe", role = "aut")

# Add a new creator, without overwriting existing authorship information:
creator(iris_dataset_2, overwrite=FALSE) <- person("John", "Doe", role = "ctb")

# The two new creation contributors:
creator(iris_dataset_2)

## ----irispublicationyear------------------------------------------------------
publication_year(iris_dataset_2)

## ----publicationyeardefault---------------------------------------------------
# Revert to default (unassigned):
publication_year(iris_dataset_2) <- NULL

# Get the default value:
publication_year(iris_dataset_2) 

## ----language-----------------------------------------------------------------
# Get the language:
language(iris_dataset)

# Reset the language:
language(iris_dataset_2) <- "French"
language(iris_dataset_2)

## ----rights-------------------------------------------------------------------
# Add rights statement to the dataset
rights(iris_dataset_2, overwrite = TRUE)  <- "GNU-2"

## ----identifier---------------------------------------------------------------
# Add rights statement to the dataset
identifier(iris_dataset_2)

## ----datacite-----------------------------------------------------------------
print(as_datacite(iris_dataset), "Bibtex")

## ----dc-----------------------------------------------------------------------
print(as_dublincore(iris_dataset), "Bibtex")

