#' Create a US ZIP choropleth from ACS data
#' 
#' Creates a US ZIP choropleth using the US Census' American Community Survey (ACS) data.  
#' Requires the acs package to be installed, and a Census API Key to be set with 
#' the acs's api.key.install function.  Census API keys can be obtained at http://www.census.gov/developers/tos/key_request.html.
#'
#' @param tableId The id of an ACS table
#' @param endyear The end year of the survey to use.  See acs.fetch (?acs.fetch) and http://1.usa.gov/1geFSSj for details.
#' @param span The span of time to use.  See acs.fetch and http://1.usa.gov/1geFSSj for details.
#' on the same longitude and latitude map to scale. This variable is only checked when the "states" variable is equal to all 50 states.
#' @param num_colors The number of colors on the map. A value of 1 
#' will use a continuous scale. A value in [2, 9] will use that many colors. 
#' @param zip_zoom An optional vector of zip codes to zoom in on. Elements of this vector must exactly 
#' match the names of zips as they appear in the "region" column of ?zip.regions.
#' @param county_zoom An optional vector of county FIPS codes to zoom in on. Elements of this 
#' vector must exactly match the names of zips as they appear in the "county.fips.numeric" column 
#' of ?zip.regions.
#' @param state_zoom An optional vector of State names to zoom in on. Elements of this 
#' vector must exactly match the names of the state names as they appear in the "state.name" column 
#' of ?zip.regions.
#' @param msa_zoom An optional vector of MSA (Metroplitan/Micropolitan Statistical Area) names to zoom in on. Elements of this 
#' vector must exactly match the names of the state names as they appear in the "cbsa.title" column 
#' of ?zip.regions.
#' @return A choropleth.
#' 
#' @keywords choropleth, acs
#' 
#' @seealso \code{api.key.install} in the acs package which sets an Census API key for the acs library
#' @seealso http://factfinder2.census.gov/faces/help/jsf/pages/metadata.xhtml?lang=en&type=survey&id=survey.en.ACS_ACS 
#' which contains a list of all ACS surveys.
#' @references Uses the acs package created by Ezra Haber Glenn.
#' @export
#' @examples
#' # Median income of all ZCTAs in New York State
#' zip_choropleth_acs("B19301", state_zoom="new york")
#' 
#' # zoom in on all ZCTAs in the 5 counties (boroughs) of New York City
#' nyc_fips = c(36005, 36047, 36061, 36081, 36085)
#' zip_choropleth_acs("B19301", county_zoom=nyc_fips)
#' 
#' # compare Manhattan's Lower East Side and Upper East Side
#' manhattan_les = c("10002", "10003", "10009")
#' manhattan_ues = c("10021", "10028", "10044", "10128")
#' zip_choropleth_acs("B19301", num_colors=1, zip_zoom=c(manhattan_les, manhattan_ues))
#' 
#' # show all ZCTAs in the New York Metropolitan Statistical Area (MSA)
#' zip_choropleth_acs("B19301", msa_zoom="New York-Newark-Jersey City, NY-NJ-PA")
#' @importFrom choroplethr get_acs_data
zip_choropleth_acs = function(tableId, endyear=2011, span=5, num_colors=7, state_zoom=NULL, county_zoom=NULL, msa_zoom=NULL, zip_zoom=NULL)
{
  acs.data = get_acs_data(tableId, "zip", endyear, span)
  
  # remove values that are not on the map to prevent the warning
  data(zip.regions, package="choroplethrZip", envir=environment())
  df = acs.data[[1]]
  df = df[df$region %in% unique(zip.regions$region), ]
  
  zip_choropleth(df, acs.data[['title']], "", num_colors,  state_zoom=state_zoom, county_zoom=county_zoom, msa_zoom=msa_zoom, zip_zoom=zip_zoom)
}