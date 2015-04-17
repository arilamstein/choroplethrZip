# choroplethrZip

v1.2.2: [![Build Status](https://travis-ci.org/arilamstein/choroplethrZip.svg?branch=v1.2.1)](https://travis-ci.org/arilamstein/choroplethrZip/branches)

Master: [![Build Status](https://travis-ci.org/arilamstein/choroplethrZip.svg)](https://travis-ci.org/arilamstein/choroplethrZip)

R package with shapefile, metadata and visualization functions for US Zip Code Tabulated Areas (ZCTAs).

## Installation

Due to this package's size (~60MB) it is hosted on github, not CRAN. To install the latest stable release type the following from an R console:

```
# install.packages("devtools")
library(devtools)
install_github('arilamstein/choroplethrZip@v1.2.2')
```

## Usage

This package ships with two vignettes which explain how to use the package. For convenience I have also published them online:

1. [Creating ZIP Code Choropleths with *choroplethrZip*](http://rpubs.com/arilamstein/zip-vignette-1)
1. [Creating ZIP Code Choropleths of US Census Data with *choroplethrZip*](http://rpubs.com/arilamstein/zip-vignette-2)

In short: type `?zip_choropleth` and `?zip_choropleth_acs` after installing the package to get started.
