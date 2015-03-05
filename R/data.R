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

#' A data.frame consisting of the name of each region (i.e. zip code) in the map zcta.map along with additional information.
#' 
#' The additional information is the state name, county name and the county fips code as a numer. Note that this data.frame
#' contains duplicates, because some zip codes span counties.
#' 
#' @seealso ?zip.map
#'  
#' @docType data
#' @name zip.regions
#' @usage data(zip.regions)
#' @references Data comes from the US Census Bureau's 2010 ZCTA to County Relationship File ( 
#' https://www.census.gov/geo/maps-data/data/zcta_rel_download.html), 2010 ZCTA to Metropolitan and Micropolitan Statistical 
#' Areas Relationship File and the Core based statistical areas (CBSAs) and combined statistical areas (CSAs) Metropolitan 
#' and Micropolitan Delineation files (http://www.census.gov/population/metro/data/def.html).
#' @examples
#' data(zip.regions)
#' head(zip.regions) 
NULL
