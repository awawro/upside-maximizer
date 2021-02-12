#' Load defined stocks historical data
#'
#' Function loads historical data (open, high, low, close) for a given vector of stock tickers
#'
#' @param stocks A vector of stock tickers
#'
#' @import dplyr
#' @import tidyquant

load.data <- function(stocks, from) {

    data.full <- tidyquant::tq_get(stocks, from = from)
    data.full <- dplyr::select(data.full, symbol, date, close)

    return(data.full)

}
