phs_pal_name <- function(palette, type) {
  if (is.character(palette)) {
    if (!palette %in% unlist(phs_palette_types)) {
      warning("Unknown palette ", palette)
      palette <- "main-purples"
    }
    return(palette)
  }

  type <- match.arg(type, c("qual", "seq"))
  phs_palette_types[[type]][palette]
}
