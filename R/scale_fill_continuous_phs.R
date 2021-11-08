#' @title Continuous colour filling scales for PHS
#'
#' @description The default continuous colour filling scale for use in PHS
#'
#' @details There are a list of continuous colour filling scales using
#' interpolated method that can be used for PHS charts, such as interpolating
#' colours for main-purples which contains phs-purple, phs-purple-80,
#' phs-purple-50, phs-purple-30 and phs-purple-10.
#'
#' @param ... Additional parameters passed on to the scale type
#' @param type "seq" (sequential).
#' Please see \code{\link{phs_palette_types}} for more details.
#' @param palette a number describing which palette to use within that type.
#' Defaulted as 1 referring to the first palette "main-purples" in type "seq".
#' It can also be the actual name of the palette e.g. main-purples.
#' Please see \code{\link{phs_palettes}} for more details.
#' @param direction either be 1 (following the palette order) or -1
#' (reversing the palette order). Defaulted as 1.
#' @param values if colours should not be evenly positioned along the gradient
#' this vector gives the position (between 0 and 1) for each colour
#' in the colours vector.
#' @param space colour space in which to calculate gradient.
#' Must be "Lab" - other values are deprecated.
#' @param na.value Missing values will be replaced with this value.
#' @param guide A function used to create a guide or its name.
#' Defaulted as "colourbar".
#' @param aesthetics defaulted as "fill"
#'
#' @examples
#' library(ggplot2)
#' ggplot(faithfuld, aes(waiting, eruptions)) +
#' geom_raster(aes(fill = density)) +
#' scale_fill_continuous_phs(palette = "main-purples", direction = -1)
#'
#' @export
scale_fill_continuous_phs <- function(..., type = "seq", palette = 1,
                                      direction = 1, values = NULL,
                                      space = "Lab", na.value = "grey50",
                                      guide = "colourbar",
                                      aesthetics = "fill") {

  # warn about using a qualitative palette to generate the gradient
  type <- match.arg(type, c("seq", "qual"))
  if (type == "qual") {
    warning("Using a discrete colour palette in a continuous scale.\n
         Consider using type = \"seq\" instead")
  }

  pal_length <- length(phs_palettes[[phs_pal_name(palette, type)]])
  colours <- phs_pal(type, palette, direction, colour_names = TRUE)(pal_length)
  values <- vapply(strsplit(names(colours), split = "-"), "[", character(1), 3)
  values <- scales::rescale(as.numeric(ifelse(is.na(values), "100", values)))

  if (direction == -1) {
    values = rev(values)
  }
  if (length(unique(values)) == 1) {
    values <- NULL
    colours <- colours[which(!is.na(colours))]
  }

  colours <- as.vector(colours)

  ggplot2::continuous_scale(aesthetics, "phs_continuous",
                            scales::gradient_n_pal(colours, values, space),
                            na.value = na.value, guide = guide, ...)

}
