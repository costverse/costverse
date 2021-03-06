
## ===== Project Setup ====

# Set name
#options(usethis.full_name = "Adam H. James")

# Ignore folders on build
usethis::use_build_ignore("tools")

# Import badges for use in documentation
usethis::use_lifecycle()

# License
usethis::use_gpl3_license("costverse")

## ===== DESCRIPTION =====

# Description list
description <- list(Description = "Convenience package to help load and install the costverse.",
                    Title = "costverse",
                    `Authors@R` = list(person(given = "Adam H.", family = "James",
                                              email = "ajames@technomics.net", role = c("cre","aut"))))

# Run this to set description. It will replace whatever is there! Keep in mind the version before doing this.
# usethis::use_description(description)

# Package dependencies
#usethis::use_pipe()
usethis::use_package("lifecycle")

## ===== README & NEWS =====

# Readme setup with RMarkdown
usethis::use_readme_rmd()
usethis::use_news_md()

usethis::use_lifecycle_badge("maturing")
#usethis::use_badge("Build: passing", "https://gitlab.technomics.net/ajames/ff2db", "https://img.shields.io/badge/build-passing-green.svg")
usethis::use_badge("License: GPLv3", "https://opensource.org/licenses/GPL-3.0", "https://img.shields.io/badge/License-GPLv3-blue.svg")


## ===== Developmental Tools =====

devtools::build_readme()
devtools::document()

devtools::spell_check()
devtools::check()

usethis::use_version()

devtools::load_all()

devtools::build(binary = TRUE)
devtools::build()

detach("package:costverse", unload = TRUE)


