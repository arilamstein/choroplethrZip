#' Map of Zip Code Tabulated Areas (ZCTAs) of the 50 US States plus the District of Columbia
#' 
#' A data.frame which contains a map of the Zip Code Tabulated Areas (ZCTAs) of all 50 states plus the District
#' of Columbia. ZCTAs are the US Census Bureau's representation of US ZIP Codes.  The shapefile
#' was modified using QGIS in order to remove Puerto Rico, islands off of Alaska that
#' crossed the antimeridian and American Samoa. A column named "region" was added for convenience which
#' is a duplicate of the column named ZCTA5CE10.
#'
#' @docType data
#' @name zcta.map
#' @usage data(zcta.map)
#' @references Taken from the US Census 2013 Cartographic Boundary Shapefiles - ZIP Code Tabulation Areas (ZCTAs): 
#' https://www.census.gov/geo/maps-data/data/cbf/cbf_zcta.html. 
#' @examples
#' \dontrun{
#' # render the map with ggplot2
#' library(ggplot2)
#' 
#' data(zcta.map)
#' ggplot(zcta.map, aes(long, lat, group=group)) + geom_polygon()
#' }
NULL

#' A data.frame consisting of the name of each region in the map zcta.map.
#' 
#' @seealso ?zcta.map
#'  
#' @docType data
#' @name zcta.regions
#' @usage data(zcta.regions)
#' @examples
#' data(zcta.regions)
#' head(zcta.regions) 
NULL
