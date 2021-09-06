
<!-- README.md is generated from README.Rmd. Please edit that file -->

# phsstyles

`phsstyles` contains functions for creating graphics with standard
styles in [Public Health Scotland
(PHS)](https://www.publichealthscotland.scot/):

-   `phs_colours()` returns hex value for specific named colours

`phsstyles` can be used on both the
[server](https://rstudio.nhsnss.scot.nhs.uk/) and desktop versions of
RStudio.

## Installation

To install `phsstyles`, the package `remotes` is required, and can be
installed with `install.packages("remotes")`.

You can then install `phsstyles` on RStudio server from GitHub with:

``` r
remotes::install_github("Public-Health-Scotland/phsstyles",
  upgrade = "never"
)
```

Network security settings may prevent `remotes::install_github()` from
working on RStudio desktop. If this is the case, `phsstyles` can be
installed by downloading the [zip of the
repository](https://github.com/Public-Health-Scotland/phsstyles/archive/master.zip)
and running the following code (replacing the section marked `<>`,
including the arrows themselves):

``` r
remotes::install_local("<FILEPATH OF ZIPPED FILE>/phsstyles-master.zip",
  upgrade = "never"
)
```

## Using phsstyles

Load `phsstyles` using `library()`:

``` r
library(phsstyles)
```

To access the help file for any of `phsstyles`’ functions, type
`?function_name` into the RStudio console after loading the package:

``` r
?phs_colours
```

### phs\_colours

``` r
# Generate hex code for those colours
phs_colours(c("phs-blue", "phs-darkblue"))
#> [1] "#0391BF" "#092869"

# List hex code for all the available colours
phs_colours()
#> phs-darkblue     phs-blue 
#>    "#092869"    "#0391BF"
```

## Contributing to phsstyles

At present, the maintainers of this package is [Tina
Fu](https://github.com/Tina815).

This package is intended to be in continuous development and
contributions may be made by anyone within PHS. If you would like to
make a contribution, please first create an
[issue](https://github.com/Public-Health-Scotland/phsstyles/issues) on
GitHub and assign **all** of the package maintainers to it. This is to
ensure that no duplication of effort occurs in the case of multiple
people having the same idea. The package maintainers will discuss the
issue and get back to you as soon as possible.

While the most obvious and eyecatching (as well as intimidating) way of
contributing is by writing a function, this isn’t the only way to make a
useful contribution. Fixing typos in documentation, for example, isn’t
the most glamorous way to contribute, but is of great help to the
package maintainers. Please see this [blogpost by Jim
Hester](https://www.tidyverse.org/blog/2017/08/contributing/) for more
information on getting started with contributing to open source
software.

When contributing, please create a
[branch](https://github.com/Public-Health-Scotland/phsstyles/branches)
in this repository and carry out all work on it. Please ensure you have
linked RStudio to your GitHub account using `usethis::edit_git_config()`
prior to making your contribution. When you are ready for a review,
please create a [pull
request](https://github.com/Public-Health-Scotland/phsstyles/pulls) and
assign **all** of the package maintainers as reviewers. One or all of
them will conduct a review, provide feedback and, if necessary, request
changes prior to merging your branch.

Please be mindful of information governance when contributing to this
package. No data files (aside from publicly available and downloadable
datasets or unless explicitly approved), server connection details,
passwords or person identifiable or otherwise confidential information
should be included anywhere within this package or any other repository
(whether public or private) used within PHS. This includes within code
and code commentary. For more information on security when using git and
GitHub, and on using git and GitHub for version control more generally,
please see the [Transforming Publishing
Programme](https://www.isdscotland.org/Products-and-Services/Transforming-Publishing-Programme/)’s
[Git guide](https://Public-Health-Scotland.github.io/git-guide/) and
[GitHub
guidance](https://github.com/Public-Health-Scotland/GitHub-guidance).

Please feel free to add yourself to the ‘Authors’ section of the
`Description` file when contributing. As a rule of thumb, please assign
your role as author (`"aut"`) when writing an exported function, and as
contributor (`"ctb"`) for anything else.

`phsstyles` will, as much as possible, adhere to the [tidyverse style
guide](https://style.tidyverse.org/) and the [rOpenSci package
development guide](https://devguide.ropensci.org/). The most pertinent
points to take from these are:

-   All function names should be in lower case, with words separated by
    an underscore
-   Put a space after a comma, never before
-   Put a space before and after infix operators such as `<-`, `==` and
    `+`
-   Limit code to 80 characters per line
-   Function documentation should be generated using
    [`roxygen2`](https://github.com/r-lib/roxygen2)
-   All functions should be tested using
    [`testthat`](https://github.com/r-lib/testthat)
-   The package should always pass `devtools::check()`

It’s not necessary to have experience with GitHub or of building an R
package to contribute to `phsstyles`. If you wish to contribute code
then, as long as you can write an R function, the package maintainers
can assist with error handling, writing documentation, testing and other
aspects of package development. It is advised, however, to consult
[Hadley Wickham’s R Packages book](https://r-pkgs.org/) prior to making
a contribution. It may also be useful to consult the
[documentation](https://github.com/Public-Health-Scotland/phsstyles/tree/master/R)
and
[tests](https://github.com/Public-Health-Scotland/phsstyles/tree/master/tests/testthat)
of existing functions within this package as a point of reference.

Please note that this README may fail to ‘Knit’ at times as a result of
network security settings. This will likely be due to the badges for the
package’s release version, continuous integration status and test
coverage at the top of the document. If you are editing the `README.Rmd`
document and are unable to successfully get it to ‘Knit’, please contact
the package maintainers for assistance.
