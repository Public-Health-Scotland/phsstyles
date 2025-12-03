# Discrete colour scales for PHS

The default discrete colour scale for use in PHS

## Usage

``` r
scale_colour_discrete_phs(
  ...,
  type = "seq",
  palette = 1,
  direction = 1,
  aesthetics = "colour"
)

scale_color_discrete_phs(
  ...,
  type = "seq",
  palette = 1,
  direction = 1,
  aesthetics = "colour"
)
```

## Arguments

- ...:

  Additional parameters passed on to the scale type

- type:

  either "seq" (sequential) or "qual" (qualitative). Defaulted as "seq".
  Please see
  [`phs_palette_types`](https://public-health-scotland.github.io/phsstyles/reference/phs_data.md)
  for more details.

- palette:

  a number describing which palette to use within that type. Defaulted
  as 1 referring to the first palette "main-purples" in type "seq". It
  can also be the actual name of the palette e.g. main-purples. Please
  see
  [`phs_palettes`](https://public-health-scotland.github.io/phsstyles/reference/phs_data.md)
  for more details.

- direction:

  either be 1 (following the palette order) or -1 (reversing the palette
  order). Defaulted as 1.

- aesthetics:

  defaulted as "colour"

## Details

There are a list of discrete colour scales that can be used for PHS
charts, such as main-purples which contains phs-purple, phs-purple-80,
phs-purple-50, phs-purple-30 and phs-purple-10.

## Examples

``` r
df <- mtcars
df[,'cyl'] <- as.factor(df[,'cyl'])
ggplot2::qplot(mpg, wt, data = df, colour = cyl) +
scale_colour_discrete_phs(palette = "main")


df <- mtcars
df[,'cyl'] <- as.factor(df[,'cyl'])
ggplot2::qplot(mpg, wt, data = df, colour = cyl) +
scale_color_discrete_phs(palette = "main")
```
