#' data.frame representation of a shapefile of US ZIP Codes
#' 
#' The map is of Zip Code Tabulated Areas (ZCTAs) of the 50 US States plus the District of Columbia and
#' comes from the US Census Bureau. The shapefile
#' was modified using QGIS in order to remove Puerto Rico, islands off of Alaska that
#' crossed the antimeridian and American Samoa. A column named "region" was added for convenience which
#' is a duplicate of the column named ZCTA5CE10.
#'
#' @docType data
#' @name zip.map
#' @usage data(zip.map)
#' @references Taken from the US Census 2013 Cartographic Boundary Shapefiles - ZIP Code Tabulation Areas (ZCTAs): 
#' https://www.census.gov/geo/maps-data/data/cbf/cbf_zcta.html. 
#' @examples
#' \dontrun{
#' # render the map with ggplot2
#' library(ggplot2)
#' 
#' data(zip.map)
#' ggplot(zip.map, aes(long, lat, group=group)) + geom_polygon()
#' }
NULL

#' A data.frame consisting of the name of each region in the map zcta.map.
#' 
#' @seealso ?zip.map
#'  
#' @docType data
#' @name zip.regions
#' @usage data(zip.regions)
#' @examples
#' data(zip.regions)
#' head(zip.regions) 
NULL
