
<!-- README.md is generated from README.Rmd. Please edit that file -->
zipdk
=====

The goal of zipdk is to have a few easy functions to map the postal codes, regions and municipalities with city, region and municipality names.

Installation
------------

You can install zipdk from github with:

``` r
# install.packages("devtools")
devtools::install_github("krose/zipdk")
```

``` r
# install.packages("devtools")
library(zipdk)
```

Example
-------

This is how you get the postal codes:

``` r

dk_zips()
#> # A tibble: 1,300 x 3
#>    postcode   city_name city_id
#>       <dbl>       <chr>   <int>
#>  1     1050 København K     101
#>  2     1051 København K     101
#>  3     1052 København K     101
#>  4     1053 København K     101
#>  5     1054 København K     101
#>  6     1055 København K     101
#>  7     1056 København K     101
#>  8     1057 København K     101
#>  9     1058 København K     101
#> 10     1059 København K     101
#> # ... with 1,290 more rows
```

This is how you get the municipalities:

``` r

dk_munis()
#> # A tibble: 1,329 x 3
#>    muni_id muni_name postal_code
#>      <int>     <chr>       <dbl>
#>  1     101 København        1050
#>  2     101 København        1051
#>  3     101 København        1052
#>  4     101 København        1053
#>  5     101 København        1054
#>  6     101 København        1055
#>  7     101 København        1056
#>  8     101 København        1057
#>  9     101 København        1058
#> 10     101 København        1059
#> # ... with 1,319 more rows
```

This is how you get the municipalities:

``` r

dk_regions()
#> # A tibble: 99 x 3
#>    region_id     region_name muni_id
#>        <int>           <chr>   <int>
#>  1         1    København By     101
#>  2         1    København By     147
#>  3         1    København By     155
#>  4         1    København By     185
#>  5         2 København omegn     165
#>  6         2 København omegn     151
#>  7         2 København omegn     153
#>  8         2 København omegn     157
#>  9         2 København omegn     159
#> 10         2 København omegn     161
#> # ... with 89 more rows
```

Further Development
-------------------

Pull requests are accepted.

I might geo code the data.
