#' @title Discrete colour scales for PHS
#'
#' @description The default discrete colour scale for use in PHS
#'
#' @details There are a list of discrete colour scales that can be used for PHS
#' charts, such as main-purples which contains phs-purple, phs-purple-80,
#' phs-purple-50, phs-purple-30 and phs-purple-10.
#'
#' @param ... Additional parameters passed on to the scale type
#' @param type either "seq" (sequential) or "qual" (qualitative).
#' Defaulted as "seq". Please see \code{\link{phs_palette_types}} for more details.
#' @param palette a number describing which palette to use within that type.
#' Defaulted as 1 referring to the first palette "main-purples" in type "seq".
#' It can also be the actual name of the palette e.g. main-purples.
#' Please see \code{\link{phs_palettes}} for more details.
#' @param direction either be 1 (following the palette order) or -1
#' (reversing the palette order). Defaulted as 1.
#' @param aesthetics defaulted as "colour"
#'
#' @examples
#' df <- mtcars
#' df[,'cyl'] <- as.factor(df[,'cyl'])
#' ggplot2::qplot(mpg, wt, data = df, colour = cyl) +
#' scale_colour_discrete_phs(palette = "main")
#'
#' @export
scale_colour_discrete_phs <- function(..., type = "seq", palette = 1,
                                      direction = 1, aesthetics = "colour") {
  ggplot2::discrete_scale(aesthetics, "phs",
                          phs_pal(type, palette, direction), ...)
}

#' @rdname scale_colour_discrete_phs
#' @examples
#' df <- mtcars
#' df[,'cyl'] <- as.factor(df[,'cyl'])
#' ggplot2::qplot(mpg, wt, data = df, colour = cyl) +
#' scale_color_discrete_phs(palette = "main")
#' @export
scale_color_discrete_phs <- scale_colour_discrete_phs
