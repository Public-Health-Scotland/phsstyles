#' PHS colours and colour palettes
#'
#' @details
#'
#' ### PHS colours
#'
#' PHS colour names and their corresponding hex codes.
#'
#' `phs_colour_values` is a character vector that contains PHS colour names
#' in the PHS chart and dashboard guidance, such as PHS blue.
#'
#' ### PHS palettes
#'
#' A list grouping PHS colours into palettes.
#' It is used within \code{\link{scale_colour_discrete_phs}},
#' \code{\link{scale_colour_continuous_phs}},
#' \code{\link{scale_fill_discrete_phs}} and
#' \code{\link{scale_fill_continuous_phs}}.
#'
#' It contains PHS colour palettes such as main, main-purples.
#'
#' ### PHS palette types
#'
#' A list grouping PHS palettes into PHS palette types.
#' It is used within \code{\link{scale_colour_discrete_phs}},
#' \code{\link{scale_colour_continuous_phs}},
#' \code{\link{scale_fill_discrete_phs}} and
#' \code{\link{scale_fill_continuous_phs}}.
#'
#' It groups PHS palettes into two types - qualitative and sequential.
#'
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
#' @source \url{http://spark.publichealthscotland.org/media/2176/chart-and-dashboard-accessibility-guidance-version-12.pdf}
#'
#'
#' @rdname phs_data
#' @format `phs_colour_values` - A `character` vector of PHS colours and hex codes.
#' @export
phs_colour_values <- c(
  # main palette, for qualitative plots
  "phs-purple" = "#3F3685",
  "phs-magenta" = "#9B4393",
  "phs-blue" = "#0078D4",
  "phs-green" = "#83BB26",
  # supporting palette, for qualitative plots
  "phs-graphite" = "#948DA3",
  "phs-teal" = "#1E7F84",
  "phs-liberty" = "#6B5C85",
  "phs-rust" = "#C73918",
  # main palette tints, for continuous / sequential plots
  "phs-purple-80" = "#655E9D",
  "phs-purple-50" = "#9F9BC2",
  "phs-purple-30" = "#C5C3DA",
  "phs-purple-10" = "#ECEBF3",
  "phs-magenta-80" = "#AF69A9",
  "phs-magenta-50" = "#CDA1C9",
  "phs-magenta-30" = "#E1C7DF",
  "phs-magenta-10" = "#F5ECF4",
  "phs-blue-80" = "#3393DD",
  "phs-blue-50" = "#80BCEA",
  "phs-blue-30" = "#B3D7F2",
  "phs-blue-10" = "#E6F2FB",
  "phs-green-80" = "#9CC951",
  "phs-green-50" = "#C1DD93",
  "phs-green-30" = "#DAEBBE",
  "phs-green-10" = "#F3F8E9",
  # supporting palette tints, for continuous / sequential plots
  "phs-graphite-80" = "#A9A4B5",
  "phs-graphite-50" = "#CAC6D1",
  "phs-graphite-30" = "#DFDDE3",
  "phs-graphite-10" = "#F4F4F6",
  "phs-teal-80" = "#4B999D",
  "phs-teal-50" = "#8FBFC2",
  "phs-teal-30" = "#BCD9DA",
  "phs-teal-10" = "#E9F2F3",
  "phs-liberty-80" = "#897D9D",
  "phs-liberty-50" = "#B5AEC2",
  "phs-liberty-30" = "#D3CEDA",
  "phs-liberty-10" = "#F0EFF3",
  "phs-rust-80" = "#D26146",
  "phs-rust-50" = "#E39C8C",
  "phs-rust-30" = "#EEC4BA",
  "phs-rust-10" = "#F9EBE8",
  # New 2025 PHS colours
  "phs-dark-blue" = "#12436D",
  "phs-dark-blue-tint" = "#94AABD",
  "phs-turquoise" = "#28A197",
  "phs-turquoise-tint" = "#B4DEDB",
  "phs-pink" = "#801650",
  "phs-pink-tint" = "#CCA2B9",
  "phs-orange" = "#F46A25",
  "phs-orange-tint" = "#FBC3A8",
  "phs-dark-purple" = "#3F085C",
  "phs-light-blue" = "#3E8ECC",
  "phs-light-blue-tint" = "#A8CCE8",
  "phs-grey" = "#3D3D3D",
  "phs-grey-tint" = "#A8A8A8",
  "phs-light-purple" = "#A285D1",
  "phs-red" = "#A01E25",
  "phs-amber-provisional" = "#F46A25",
  "phs-amber" = "#FAA73F",
  "phs-green-provisional" = "#3A9948",
  "phs-green-rag" = "#005D30",
  "phs-blue-rag" = "#5DA9DD"
)

#' @rdname phs_data
#' @format `phs_colour_palettes` - A `list` of PHS colours grouped into palettes.
#' @export
phs_palettes <- list(
  "main" = phs_colour_values[c("phs-purple", "phs-magenta",
                                  "phs-blue", "phs-green")],
  "supporting" = phs_colour_values[c("phs-graphite", "phs-teal",
                                        "phs-liberty", "phs-rust")],
  "all" = phs_colour_values[c("phs-purple", "phs-magenta",
                                 "phs-blue", "phs-green",
                                 "phs-graphite", "phs-teal",
                                 "phs-liberty", "phs-rust")],
  "main-purples" = phs_colour_values[c("phs-purple", "phs-purple-80",
                                          "phs-purple-50", "phs-purple-30",
                                          "phs-purple-10")],
  "main-magentas" = phs_colour_values[c("phs-magenta", "phs-magenta-80",
                                           "phs-magenta-50", "phs-magenta-30",
                                           "phs-magenta-10")],
  "main-blues" = phs_colour_values[c("phs-blue", "phs-blue-80",
                                        "phs-blue-50", "phs-blue-30",
                                        "phs-blue-10")],
  "main-greens" = phs_colour_values[c("phs-green", "phs-green-80",
                                         "phs-green-50", "phs-green-30",
                                         "phs-green-10")],
  "supporting-graphites" = phs_colour_values[c("phs-graphite",
                                                  "phs-graphite-80",
                                                  "phs-graphite-50",
                                                  "phs-graphite-30",
                                                  "phs-graphite-10")],
  "supporting-teals" = phs_colour_values[c("phs-teal", "phs-teal-80",
                                              "phs-teal-50", "phs-teal-30",
                                              "phs-teal-10")],
  "supporting-liberties" = phs_colour_values[c("phs-liberty",
                                                  "phs-liberty-80",
                                                  "phs-liberty-50",
                                                  "phs-liberty-30",
                                                  "phs-liberty-10")],
  "supporting-rusts" = phs_colour_values[c("phs-rust", "phs-rust-80",
                                              "phs-rust-50", "phs-rust-30",
                                              "phs-rust-10")],
  "categories" = phs_colour_values[
    c(
      "phs-dark-blue", "phs-turquoise", "phs-pink",
      "phs-orange", "phs-dark-purple", "phs-light-blue",
      "phs-grey", "phs-light-purple"
    )],
  "categories-large" = phs_colour_values[
    c(
      "phs-dark-blue", "phs-dark-blue-tint",
      "phs-turquoise", "phs-turquoise-tint",
      "phs-pink", "phs-pink-tint",
      "phs-orange", "phs-orange-tint",
      "phs-grey", "phs-grey-tint",
      "phs-light-blue", "phs-light-blue-tint",
      "phs-dark-purple", "phs-light-purple"
    )],
  "rag" = phs_colour_values[
    c("phs-red", "phs-amber", "phs-green-rag")
    
  ),
  "rag-large" = phs_colour_values[c(
    "phs-red",
    "phs-amber-provisional", "phs-amber",
    "phs-green-provisional", "phs-green-rag",
    "phs-blue-rag"
  )]
    )

#' @rdname phs_data
#' @format `phs_palette_types` - A `list` of PHS palettes grouped into palette types.
#' @export
phs_palette_types <- list(
  qual = c("main", "supporting", "all"),
  seq = c(
    "main-purples", "main-magentas",
    "main-blues", "main-greens",
    "supporting-graphites", "supporting-teals",
    "supporting-liberties", "supporting-rusts",
    "categories", "categories-large", "rag", "rag-large"
  )
)
