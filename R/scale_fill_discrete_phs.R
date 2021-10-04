#' @title Discrete colour filling scales for PHS
#'
#' @description The default discrete colour filling scale for use in PHS
#'
#' @details There are a list of discrete colour filling scales that can be used
#' for PHS charts, such as main-purples which contains phs-purple,
#' phs-purple-80, phs-purple-50, phs-purple-30 and phs-purple-10.
#'
#' @param ... Additional parameters passed on to the scale type
#' @param type either "seq" (sequential) or "qual" (qualitative).
#' Defaulted as "seq".
#' @param palette a number describing which palette to use within that type.
#' Defaulted as 1 referring to the first palette "main-purples" in type "seq".
#' It can also be the actual name of the palette e.g. main-purples
#' @param direction either be 1 (following the palette order) or -1
#' (reversing the palette order). Defaulted as 1.
#' @param aesthetics defaulted as "fill"
#'
#' @examples
#' library(ggplot2)
#' ggplot(mtcars, aes(x = as.factor(cyl), fill = as.factor(cyl))) +
#' geom_bar() +
#' scale_fill_discrete_phs(palette = "main-blues") +
#' theme(legend.position = "none")

#' @export
scale_fill_discrete_phs <- function(..., type = "seq", palette = 1,
                                    direction = 1, aesthetics = "fill") {
ggplot2::discrete_scale(aesthetics, "phs",
                        phs_pal(type, palette, direction), ...)
}
