### Script principal
# Pour jeu de donnée acoustique_oiseaux
# Travail par Frédérick St-Pierre, Yohan Wegener, Aurel veillet et Félix Labbé

setwd(getwd())

# 1) Script d'assemblage des données
csv_files <- list.files(pattern = "\\.csv$")
source("assemblage_modif.R")
bd <- read_d(csv_files)

# 2) Script de nettoyage
install.packages("dplyr")
install.packages("lubridate")
install.packages("stringr")
source("nettoyage.R")

# 3) Script d'ajout d'identifiant tsn
install.packages("taxize")
source("assemblage_tsn.R")

# 4) script de validations des données
source("validation.R")

# 5) Visualisation des données modifiées
View(bd)
test git 
