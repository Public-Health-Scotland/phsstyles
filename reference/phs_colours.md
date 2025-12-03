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
#>      phs-purple     phs-magenta        phs-blue       phs-green    phs-graphite 
#>       "#3F3685"       "#9B4393"       "#0078D4"       "#83BB26"       "#948DA3" 
#>        phs-teal     phs-liberty        phs-rust   phs-purple-80   phs-purple-50 
#>       "#1E7F84"       "#6B5C85"       "#C73918"       "#655E9D"       "#9F9BC2" 
#>   phs-purple-30   phs-purple-10  phs-magenta-80  phs-magenta-50  phs-magenta-30 
#>       "#C5C3DA"       "#ECEBF3"       "#AF69A9"       "#CDA1C9"       "#E1C7DF" 
#>  phs-magenta-10     phs-blue-80     phs-blue-50     phs-blue-30     phs-blue-10 
#>       "#F5ECF4"       "#3393DD"       "#80BCEA"       "#B3D7F2"       "#E6F2FB" 
#>    phs-green-80    phs-green-50    phs-green-30    phs-green-10 phs-graphite-80 
#>       "#9CC951"       "#C1DD93"       "#DAEBBE"       "#F3F8E9"       "#A9A4B5" 
#> phs-graphite-50 phs-graphite-30 phs-graphite-10     phs-teal-80     phs-teal-50 
#>       "#CAC6D1"       "#DFDDE3"       "#F4F4F6"       "#4B999D"       "#8FBFC2" 
#>     phs-teal-30     phs-teal-10  phs-liberty-80  phs-liberty-50  phs-liberty-30 
#>       "#BCD9DA"       "#E9F2F3"       "#897D9D"       "#B5AEC2"       "#D3CEDA" 
#>  phs-liberty-10     phs-rust-80     phs-rust-50     phs-rust-30     phs-rust-10 
#>       "#F0EFF3"       "#D26146"       "#E39C8C"       "#EEC4BA"       "#F9EBE8" 

phs_colors("phs-blue")
#> [1] "#0078D4"

phs_colors(c("phs-blue", "phs-purple"))
#> [1] "#0078D4" "#3F3685"

phs_colors()
#>      phs-purple     phs-magenta        phs-blue       phs-green    phs-graphite 
#>       "#3F3685"       "#9B4393"       "#0078D4"       "#83BB26"       "#948DA3" 
#>        phs-teal     phs-liberty        phs-rust   phs-purple-80   phs-purple-50 
#>       "#1E7F84"       "#6B5C85"       "#C73918"       "#655E9D"       "#9F9BC2" 
#>   phs-purple-30   phs-purple-10  phs-magenta-80  phs-magenta-50  phs-magenta-30 
#>       "#C5C3DA"       "#ECEBF3"       "#AF69A9"       "#CDA1C9"       "#E1C7DF" 
#>  phs-magenta-10     phs-blue-80     phs-blue-50     phs-blue-30     phs-blue-10 
#>       "#F5ECF4"       "#3393DD"       "#80BCEA"       "#B3D7F2"       "#E6F2FB" 
#>    phs-green-80    phs-green-50    phs-green-30    phs-green-10 phs-graphite-80 
#>       "#9CC951"       "#C1DD93"       "#DAEBBE"       "#F3F8E9"       "#A9A4B5" 
#> phs-graphite-50 phs-graphite-30 phs-graphite-10     phs-teal-80     phs-teal-50 
#>       "#CAC6D1"       "#DFDDE3"       "#F4F4F6"       "#4B999D"       "#8FBFC2" 
#>     phs-teal-30     phs-teal-10  phs-liberty-80  phs-liberty-50  phs-liberty-30 
#>       "#BCD9DA"       "#E9F2F3"       "#897D9D"       "#B5AEC2"       "#D3CEDA" 
#>  phs-liberty-10     phs-rust-80     phs-rust-50     phs-rust-30     phs-rust-10 
#>       "#F0EFF3"       "#D26146"       "#E39C8C"       "#EEC4BA"       "#F9EBE8" 
```
