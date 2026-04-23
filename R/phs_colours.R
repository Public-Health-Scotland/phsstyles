#' @title Return hex value for specific named colours
#'
#' @description \code{phs_colours} takes named PHS colours and returns their
#' hex value \code{\link{phs_colour_values}}
#'
#' @details Named PHS colours can be phs-blue, phs-purple
#'
#' @param colourname A colour name or vector of colour names.
#' @param keep_names whether to keep the colour names with hex values.
#' Defaulted as FALSE.
#'
#' @examples
#' phs_colours("phs-blue")
#'
#' phs_colours(c("phs-blue", "phs-purple"))
#'
#' phs_colours()
#'
#' @export
phs_colours <- function(colourname = NULL, keep_names = FALSE){
  # Early return avoids unnecessary condition chains
  if (is.null(colourname)) {
    return(phs_colour_values)
  }
  
  # Single validation check
  invalid_colours <- setdiff(colourname, names(phs_colour_values))
  if (length(invalid_colours) > 0) {
    stop("These colours are not available: ",
         paste(invalid_colours, collapse = ','),
         "\nPlease run phs_colours() to see all the available colours")
  }
  
  # Direct subsetting without unname copy
  result <- phs_colour_values[colourname]
  if (!keep_names) {
    names(result) <- NULL
  }
  result
}

#' @rdname phs_colours
#' @examples
#' phs_colors("phs-blue")
#'
#' phs_colors(c("phs-blue", "phs-purple"))
#'
#' phs_colors()
#' @export
phs_colors <- phs_colours
