% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scale_fill_continuous_phs.R
\name{scale_fill_continuous_phs}
\alias{scale_fill_continuous_phs}
\title{Continuous colour filling scales for PHS}
\usage{
scale_fill_continuous_phs(
  ...,
  type = "seq",
  palette = 1,
  direction = 1,
  values = NULL,
  space = "Lab",
  na.value = "grey50",
  guide = "colourbar",
  aesthetics = "fill"
)
}
\arguments{
\item{...}{Additional parameters passed on to the scale type}

\item{type}{"seq" (sequential).
Please see \code{\link{phs_palette_types}} for more details.}

\item{palette}{a number describing which palette to use within that type.
Defaulted as 1 referring to the first palette "main-purples" in type "seq".
It can also be the actual name of the palette e.g. main-purples.
Please see \code{\link{phs_palettes}} for more details.}

\item{direction}{either be 1 (following the palette order) or -1
(reversing the palette order). Defaulted as 1.}

\item{values}{if colours should not be evenly positioned along the gradient
this vector gives the position (between 0 and 1) for each colour
in the colours vector.}

\item{space}{colour space in which to calculate gradient.
Must be "Lab" - other values are deprecated.}

\item{na.value}{Missing values will be replaced with this value.}

\item{guide}{A function used to create a guide or its name.
Defaulted as "colourbar".}

\item{aesthetics}{defaulted as "fill"}
}
\description{
The default continuous colour filling scale for use in PHS
}
\details{
There are a list of continuous colour filling scales using
interpolated method that can be used for PHS charts, such as interpolating
colours for main-purples which contains phs-purple, phs-purple-80,
phs-purple-50, phs-purple-30 and phs-purple-10.
}
\examples{
library(ggplot2)
ggplot(faithfuld, aes(waiting, eruptions)) +
geom_raster(aes(fill = density)) +
scale_fill_continuous_phs(palette = "main-purples", direction = -1)

}
