options(tidyverse.quiet = TRUE)
tar_option_set(packages = c("tidyverse", "tidymodels", "embed"),
               seed = 1234)

separate_wider_regex_name <- purrr::partial(tidyr::separate_wider_regex,
                                            cols = Name,
                                            patterns = c(".+,\\s",
                                                         Honorific = ".+",
                                                         "\\.\\s",
                                                         LastName = ".+"))

