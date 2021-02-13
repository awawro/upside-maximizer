#' Load defined stocks historical data
#'
#' Function loads historical data (open, high, low, close) for a given vector of stock tickers
#'
#' @param stocks A vector of stock tickers

load.data <- function(stocks, from = "2020-08-01") {

    data.full <- tidyquant::tq_get(stocks, from = from)
    data.full <- dplyr::select(data.full, symbol, date, close)

    return(data.full)

}
