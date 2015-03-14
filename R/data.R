#' Map of US Zip Code Tabulated Areas (ZCTAs)
#' 
#' The map
#' was modified using QGIS in order to remove Puerto Rico, islands off of Alaska that
#' crossed the antimeridian and American Samoa. A column named "region" was added for convenience which
#' is a duplicate of the column named ZCTA5CE10.
#'
#' @docType data
#' @name zip.map
#' @usage data(zip.map)
#' @references Taken from the US Census 2013 Cartographic Boundary Shapefiles - ZIP Code Tabulation Areas (ZCTAs): 
#' https://www.census.gov/geo/maps-data/data/cbf/cbf_zcta.html. 
NULL

#' Metadata about US Zip Code Tabulated Areas (ZCTAs)
#' 
#' The metadata is: State name, County name, County FIPS code, Core Based Statistical
#' Area (CBSA) id, CBSA title and 
#' Metropolitan/Micropolitan Statistical Area (MSA) name.
#' 
#' Note that this data.frame contains duplicates, because some ZCTAs span multiple Counties and States.
#' 
#' @seealso ?zip.map
#'  
#' @docType data
#' @name zip.regions
#' @usage data(zip.regions)
#' @references Data comes from the US Census Bureau's 2010 ZCTA to County Relationship File 
#' (https://www.census.gov/geo/maps-data/data/zcta_rel_download.html), 2010 ZCTA to Metropolitan and Micropolitan Statistical 
#' Areas Relationship File and the Core Based Statistical Areas (CBSAs) and Combined Statistical Areas (CSAs) Metropolitan 
#' and Micropolitan Delineation files (http://www.census.gov/population/metro/data/def.html).
NULL

#' A data.frame containing population estimates for US Zip Code Tabulated Areas (ZCTAs) in 2012.   
#' 
#' ZCTAs are intended to be roughly analogous to postal ZIP codes.
#'
#' @name df_pop_zip
#' @docType data
#' @references Taken from the US American Community Survey (ACS) 5 year estimates.
#' ZCTAs, and their realationship to ZIP codes, are explained here \url{https://www.census.gov/geo/reference/zctas.html}.
#' @keywords data
#' @usage data(df_pop_zip)
NULL