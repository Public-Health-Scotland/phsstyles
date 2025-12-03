# PHS colours and colour palettes

PHS colours and colour palettes

## Usage

``` r
phs_colour_values

phs_palettes

phs_palette_types
```

## Format

`phs_colour_values` - A `character` vector of PHS colours and hex codes.

`phs_colour_palettes` - A `list` of PHS colours grouped into palettes.

`phs_palette_types` - A `list` of PHS palettes grouped into palette
types.

## Source

<http://spark.publichealthscotland.org/media/2176/chart-and-dashboard-accessibility-guidance-version-12.pdf>

## Details

### PHS colours

PHS colour names and their corresponding hex codes.

`phs_colour_values` is a character vector that contains PHS colour names
in the PHS chart and dashboard guidance, such as PHS blue.

### PHS palettes

A list grouping PHS colours into palettes. It is used within
[`scale_colour_discrete_phs`](https://public-health-scotland.github.io/phsstyles/reference/scale_colour_discrete_phs.md),
[`scale_colour_continuous_phs`](https://public-health-scotland.github.io/phsstyles/reference/scale_colour_continuous_phs.md),
[`scale_fill_discrete_phs`](https://public-health-scotland.github.io/phsstyles/reference/scale_fill_discrete_phs.md)
and
[`scale_fill_continuous_phs`](https://public-health-scotland.github.io/phsstyles/reference/scale_fill_continuous_phs.md).

It contains PHS colour palettes such as main, main-purples.

### PHS palette types

A list grouping PHS palettes into PHS palette types. It is used within
[`scale_colour_discrete_phs`](https://public-health-scotland.github.io/phsstyles/reference/scale_colour_discrete_phs.md),
[`scale_colour_continuous_phs`](https://public-health-scotland.github.io/phsstyles/reference/scale_colour_continuous_phs.md),
[`scale_fill_discrete_phs`](https://public-health-scotland.github.io/phsstyles/reference/scale_fill_discrete_phs.md)
and
[`scale_fill_continuous_phs`](https://public-health-scotland.github.io/phsstyles/reference/scale_fill_continuous_phs.md).

It groups PHS palettes into two types - qualitative and sequential.

The palettes and their types are listed below.

|                 |                      |
|-----------------|----------------------|
| **Qualitative** | **Sequential**       |
| main            | x                    |
| supporting      | x                    |
| all             | x                    |
| x               | main-purples         |
| x               | main-magentas        |
| x               | main-blues           |
| x               | main-greens          |
| x               | supporting-graphites |
| x               | supporting-teals     |
| x               | supporting-liberties |
| x               | supporting-rusts     |
