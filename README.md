# exasol.dplyr
Dplyr addon for the EXASOL R package
Copyright © EXASOL AG, Nuremberg (Germany). All rights reserved.  
2004 - 2016

[![Build Status](https://travis-ci.org/marcelboldt/r-exasol-dplyr.svg)](https://travis-ci.org/marcelboldt/r-exasol-dplyr)
[![codecov.io](https://codecov.io/github/marcelboldt/r-exasol-dplyr/coverage.svg?branch=master)](https://codecov.io/github/marcelboldt/r-exasol-dplyr?branch=master)
[![Issue Stats](http://issuestats.com/github/marcelboldt/r-exasol-dplyr/badge/pr)](http://issuestats.com/github/marcelboldt/r-exasol-dplyr)
[![Issue Stats](http://issuestats.com/github/marcelboldt/r-exasol-dplyr/badge/issue)](http://issuestats.com/github/marcelboldt/r-exasol-dplyr)

## Installation

You need to have [Rtools](https://cran.r-project.org/bin/windows/Rtools/)
installed on Windows for R to be able to compile the package (for Linux see below).
Plus, the R package **devtools** must be available as it contains the `install_github()` method. The EXASOL package itself
depends on the R package **RODBC**, which should be available on install
from Github.

To install the EXASOL package:
```r
devtools::install_github("EXASOL/r-exasol")
```

To install this package:
```r
devtools::install_github("marcelboldt/r-exasol-dplyr")
```

## Status:

Early prototype... still a lot to do.

Code coverage of tests:

![codecov.io](https://codecov.io/github/EXASOL/r-exasol/branch.svg?branch=master)