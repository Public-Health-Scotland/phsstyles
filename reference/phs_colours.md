# Return hex value for specific named colours

`phs_colours` takes named PHS colours and returns their hex value
[`phs_colour_values`](https://public-health-scotland.github.io/phsstyles/reference/phs_data.md)

## Usage

``` r
phs_colours(colourname = NULL, keep_names = FALSE)

phs_colors(colourname = NULL, keep_names = FALSE)
```

## Arguments

- colourname:

  A colour name or vector of colour names.

- keep_names:

  whether to keep the colour names with hex values. Defaulted as FALSE.

## Details

Named PHS colours can be phs-blue, phs-purple

## Examples

``` r
phs_colours("phs-blue")
#> [1] "#0078D4"

phs_colours(c("phs-blue", "phs-purple"))
#> [1] "#0078D4" "#3F3685"

phs_colours()
#>            phs-purple           phs-magenta              phs-blue 
#>             "#3F3685"             "#9B4393"             "#0078D4" 
#>             phs-green          phs-graphite              phs-teal 
#>             "#83BB26"             "#948DA3"             "#1E7F84" 
#>           phs-liberty              phs-rust         phs-purple-80 
#>             "#6B5C85"             "#C73918"             "#655E9D" 
#>         phs-purple-50         phs-purple-30         phs-purple-10 
#>             "#9F9BC2"             "#C5C3DA"             "#ECEBF3" 
#>        phs-magenta-80        phs-magenta-50        phs-magenta-30 
#>             "#AF69A9"             "#CDA1C9"             "#E1C7DF" 
#>        phs-magenta-10           phs-blue-80           phs-blue-50 
#>             "#F5ECF4"             "#3393DD"             "#80BCEA" 
#>           phs-blue-30           phs-blue-10          phs-green-80 
#>             "#B3D7F2"             "#E6F2FB"             "#9CC951" 
#>          phs-green-50          phs-green-30          phs-green-10 
#>             "#C1DD93"             "#DAEBBE"             "#F3F8E9" 
#>       phs-graphite-80       phs-graphite-50       phs-graphite-30 
#>             "#A9A4B5"             "#CAC6D1"             "#DFDDE3" 
#>       phs-graphite-10           phs-teal-80           phs-teal-50 
#>             "#F4F4F6"             "#4B999D"             "#8FBFC2" 
#>           phs-teal-30           phs-teal-10        phs-liberty-80 
#>             "#BCD9DA"             "#E9F2F3"             "#897D9D" 
#>        phs-liberty-50        phs-liberty-30        phs-liberty-10 
#>             "#B5AEC2"             "#D3CEDA"             "#F0EFF3" 
#>           phs-rust-80           phs-rust-50           phs-rust-30 
#>             "#D26146"             "#E39C8C"             "#EEC4BA" 
#>           phs-rust-10         phs-dark-blue    phs-dark-blue-tint 
#>             "#F9EBE8"             "#12436D"             "#94AABD" 
#>         phs-turquoise    phs-turquoise-tint              phs-pink 
#>             "#28A197"             "#B4DEDB"             "#801650" 
#>         phs-pink-tint            phs-orange       phs-orange-tint 
#>             "#CCA2B9"             "#F46A25"             "#FBC3A8" 
#>       phs-dark-purple        phs-light-blue   phs-light-blue-tint 
#>             "#3F085C"             "#3E8ECC"             "#A8CCE8" 
#>              phs-grey         phs-grey-tint      phs-light-purple 
#>             "#3D3D3D"             "#A8A8A8"             "#A285D1" 
#>               phs-red phs-amber-provisional             phs-amber 
#>             "#A01E25"             "#F46A25"             "#FAA73F" 
#> phs-green-provisional         phs-green-rag          phs-blue-rag 
#>             "#3A9948"             "#005D30"             "#5DA9DD" 

phs_colors("phs-blue")
#> [1] "#0078D4"

phs_colors(c("phs-blue", "phs-purple"))
#> [1] "#0078D4" "#3F3685"

phs_colors()
#>            phs-purple           phs-magenta              phs-blue 
#>             "#3F3685"             "#9B4393"             "#0078D4" 
#>             phs-green          phs-graphite              phs-teal 
#>             "#83BB26"             "#948DA3"             "#1E7F84" 
#>           phs-liberty              phs-rust         phs-purple-80 
#>             "#6B5C85"             "#C73918"             "#655E9D" 
#>         phs-purple-50         phs-purple-30         phs-purple-10 
#>             "#9F9BC2"             "#C5C3DA"             "#ECEBF3" 
#>        phs-magenta-80        phs-magenta-50        phs-magenta-30 
#>             "#AF69A9"             "#CDA1C9"             "#E1C7DF" 
#>        phs-magenta-10           phs-blue-80           phs-blue-50 
#>             "#F5ECF4"             "#3393DD"             "#80BCEA" 
#>           phs-blue-30           phs-blue-10          phs-green-80 
#>             "#B3D7F2"             "#E6F2FB"             "#9CC951" 
#>          phs-green-50          phs-green-30          phs-green-10 
#>             "#C1DD93"             "#DAEBBE"             "#F3F8E9" 
#>       phs-graphite-80       phs-graphite-50       phs-graphite-30 
#>             "#A9A4B5"             "#CAC6D1"             "#DFDDE3" 
#>       phs-graphite-10           phs-teal-80           phs-teal-50 
#>             "#F4F4F6"             "#4B999D"             "#8FBFC2" 
#>           phs-teal-30           phs-teal-10        phs-liberty-80 
#>             "#BCD9DA"             "#E9F2F3"             "#897D9D" 
#>        phs-liberty-50        phs-liberty-30        phs-liberty-10 
#>             "#B5AEC2"             "#D3CEDA"             "#F0EFF3" 
#>           phs-rust-80           phs-rust-50           phs-rust-30 
#>             "#D26146"             "#E39C8C"             "#EEC4BA" 
#>           phs-rust-10         phs-dark-blue    phs-dark-blue-tint 
#>             "#F9EBE8"             "#12436D"             "#94AABD" 
#>         phs-turquoise    phs-turquoise-tint              phs-pink 
#>             "#28A197"             "#B4DEDB"             "#801650" 
#>         phs-pink-tint            phs-orange       phs-orange-tint 
#>             "#CCA2B9"             "#F46A25"             "#FBC3A8" 
#>       phs-dark-purple        phs-light-blue   phs-light-blue-tint 
#>             "#3F085C"             "#3E8ECC"             "#A8CCE8" 
#>              phs-grey         phs-grey-tint      phs-light-purple 
#>             "#3D3D3D"             "#A8A8A8"             "#A285D1" 
#>               phs-red phs-amber-provisional             phs-amber 
#>             "#A01E25"             "#F46A25"             "#FAA73F" 
#> phs-green-provisional         phs-green-rag          phs-blue-rag 
#>             "#3A9948"             "#005D30"             "#5DA9DD" 
```
