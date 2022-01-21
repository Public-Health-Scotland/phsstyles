#' \code{phsstyles} package
#'
#' Standard graphic styles for use in PHS.
#'
#' See the README on
#' \href{https://github.com/Public-Health-Scotland/phsstyles#readme}{GitHub}.
#'
#' @docType package
#' @name phsstyles
NULL

# Stops notes from appearing in R CMD check because of undefined global
# variables
if (getRversion() >= "2.15.1") utils::globalVariables(c("phs_colour_values",
                                                        "phs_palette_types",
                                                        "phs_palettes"))
