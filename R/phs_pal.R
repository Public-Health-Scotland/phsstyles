phs_pal <- function(type = "seq", palette = 1, direction = 1,
                    colour_names = FALSE) {
  pal <- phs_pal_name(palette, type)
  force(direction)
  function(n) {
    pal <- phs_pal1(n, pal)
    pal <- pal[seq_len(n)]
    if (direction == -1) {
      pal <- rev(pal)
    }
    if (colour_names == TRUE) {
      pal
    } else {
      as.vector(pal)
    }
  }
}
