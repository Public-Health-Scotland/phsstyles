phs_pal1 <- function(n, name) {
  if (!(name %in% names(phs_palettes))) {
    stop(paste(name,"is not a valid palette name.\n"))
  }

  if (n > length(phs_palettes[[name]]) & !(name %in% phs_palette_types[["seq"]])) {
    warning(paste("n too large, allowed maximum for palette", name, "is",
                  length(phs_palettes[[name]])),
            "\nReturning the palette you asked for with that many colors\n")
    return(phs_pal1(length(phs_palettes[[name]]), name))
  }

  phs_palettes[[name]]
}
