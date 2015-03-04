#' Create a ZIP-level choropleth
#' 
#' @export
#' @importFrom R6 R6Class
ZipChoropleth = R6Class("ZipChoropleth",
  inherit = choroplethr:::Choropleth,
  public = list(
    
    # initialize with a world map
    initialize = function(user.df)
    {
      data(zcta.map, envir=environment())
      super$initialize(zcta.map, user.df)
    }
  )
)

#' Create a choropleth of USA Zip Code Tabulated Areas (ZCTAs) with sensible defaults.
#' 
#' The map used is zcta.map.  See zcta.regions for a list of valid regions.
#' 
#' @param df A data.frame with a column named "region" and a column named "value".  Elements in 
#' the "region" column must exactly match how regions are named in the "region" column in zcta.map.
#' @param title An optional title for the map.  
#' @param legend An optional name for the legend.  
#' @param buckets The number of equally sized buckets to places the values in.  A value of 1 
#' will use a continuous scale, and a value in [2, 9] will use that many buckets. 
#' @param zoom An optional vector of ZIPs to zoom in on. Elements of this vector must exactly 
#' match the names of ZIPs as they appear in the "region" column of ?zcta.regions
#' @export
zip_choropleth = function(df, title="", legend="", buckets=7, zoom=NULL)
{
  c = ZipChoropleth$new(df)
  c$title  = title
  c$legend = legend
  c$set_buckets(buckets)
  c$set_zoom(zoom)
  c$render()
}