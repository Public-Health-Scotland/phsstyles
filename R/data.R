#' PHS colour names and their hex code.
#'
#' A vector containing PHS colour names and their corresponding hex code.
#' It is used within \code{\link{phs_colours}}.
#'
#' @details It contains PHS colour names in the PHS chart and dashboard guidance, such as PHS blue.
#'
#' @format A character vector
#' @source \url{http://spark.publichealthscotland.org/media/2176/chart-and-dashboard-accessibility-guidance-version-12.pdf}
"phs_colour_values"

#' PHS palettes
#'
#' A list grouping PHS colours into palettes.
#' It is used within \code{\link{scale_colour_discrete_phs}},
#' \code{\link{scale_colour_continuous_phs}},
#' \code{\link{scale_fill_discrete_phs}} and
#' \code{\link{scale_fill_continuous_phs}}.
#'
#' @details It contains PHS colour palettes such as main, main-purples.
#' The palettes and their types are listed below.
#'
#' | **Qualitative** | **Sequential** |
#' | --- | --- |
#' | main | x |
#' | supporting | x |
#' | all | x |
#' | x | main-purples |
#' | x | main-magentas |
#' | x | main-blues |
#' | x | main-greens |
#' | x | supporting-graphites |
#' | x | supporting-teals |
#' | x | supporting-liberties |
#' | x | supporting-rusts |
#'
#'@md
#'
#' @format A character list
"phs_palettes"

#' PHS palette types
#'
#' A list grouping PHS palettes into PHS palettes types.
#' It is used within \code{\link{scale_colour_discrete_phs}},
#' \code{\link{scale_colour_continuous_phs}},
#' \code{\link{scale_fill_discrete_phs}} and
#' \code{\link{scale_fill_continuous_phs}}.
#'
#' @details It groups PHS palettes into two types - qualitative and sequential.
#' The palettes and their types are listed below.
#'
#' | **Qualitative** | **Sequential** |
#' | --- | --- |
#' | main | x |
#' | supporting | x |
#' | all | x |
#' | x | main-purples |
#' | x | main-magentas |
#' | x | main-blues |
#' | x | main-greens |
#' | x | supporting-graphites |
#' | x | supporting-teals |
#' | x | supporting-liberties |
#' | x | supporting-rusts |
#'
#'@md
#'
#' @format A character list
"phs_palette_types"
