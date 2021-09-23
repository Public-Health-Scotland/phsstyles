phs_pal_name <- function(palette, type) {
  # load the list phs_palette_types
  phs_palette_types <- phsstyles::phs_palette_types

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
