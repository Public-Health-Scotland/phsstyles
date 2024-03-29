### This script creates the list of standard colours in Public Health Scotland
### based on Chart and Dashboard Accessibility Guidance.
###
### The resulting file is used inside the phs_colours function and is made
### available to users of the package via phsstyles::phs_colour_values
###
### This script should be re-run prior to every package release, to ensure the
### most up-to-date information provided by Chart and Dashboard Accessibility
### Guidance is used
###
### Any substantial changes to the data should be noted in the section
### pertaining to the latest release in the NEWS.md file

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
  "phs-rust-10" = "#F9EBE8")

phs_palettes <- list(
  "main" = phsstyles::phs_colours(c("phs-purple", "phs-magenta",
                                  "phs-blue", "phs-green"), keep_names = TRUE),
  "supporting" = phsstyles::phs_colours(c("phs-graphite", "phs-teal",
                                        "phs-liberty", "phs-rust"),
                                        keep_names = TRUE),
  "all" = phsstyles::phs_colours(c("phs-purple", "phs-magenta",
                                 "phs-blue", "phs-green",
                                 "phs-graphite", "phs-teal",
                                 "phs-liberty", "phs-rust"), keep_names = TRUE),
  "main-purples" = phsstyles::phs_colours(c("phs-purple", "phs-purple-80",
                                          "phs-purple-50", "phs-purple-30",
                                          "phs-purple-10"), keep_names = TRUE),
  "main-magentas" = phsstyles::phs_colours(c("phs-magenta", "phs-magenta-80",
                                           "phs-magenta-50", "phs-magenta-30",
                                           "phs-magenta-10"),
                                           keep_names = TRUE),
  "main-blues" = phsstyles::phs_colours(c("phs-blue", "phs-blue-80",
                                        "phs-blue-50", "phs-blue-30",
                                        "phs-blue-10"), keep_names = TRUE),
  "main-greens" = phsstyles::phs_colours(c("phs-green", "phs-green-80",
                                         "phs-green-50", "phs-green-30",
                                         "phs-green-10"), keep_names = TRUE),
  "supporting-graphites" = phsstyles::phs_colours(c("phs-graphite",
                                                  "phs-graphite-80",
                                                  "phs-graphite-50",
                                                  "phs-graphite-30",
                                                  "phs-graphite-10"),
                                                  keep_names = TRUE),
  "supporting-teals" = phsstyles::phs_colours(c("phs-teal", "phs-teal-80",
                                              "phs-teal-50", "phs-teal-30",
                                              "phs-teal-10"),
                                              keep_names = TRUE),
  "supporting-liberties" = phsstyles::phs_colours(c("phs-liberty",
                                                  "phs-liberty-80",
                                                  "phs-liberty-50",
                                                  "phs-liberty-30",
                                                  "phs-liberty-10"),
                                                  keep_names = TRUE),
  "supporting-rusts" = phsstyles::phs_colours(c("phs-rust", "phs-rust-80",
                                              "phs-rust-50", "phs-rust-30",
                                              "phs-rust-10"),
                                              keep_names = TRUE))

phs_palette_types <- list(
  qual = c("main", "supporting", "all"),
  seq = c("main-purples", "main-magentas",
          "main-blues", "main-greens",
          "supporting-graphites", "supporting-teals",
          "supporting-liberties", "supporting-rusts"))

usethis::use_data(phs_colour_values, phs_palettes, phs_palette_types,
                  overwrite = TRUE)
