#' Identify maxima in a data frame
#'
#' Identify local extrema in a data frame
#'
#' @param df A \code{data.frame} generated by the \code{load.data} function.
#' @param threshold An integer defining threshold for local extrema identification

identify.maxima <- function(df, span = 11) {

    loc.maximum <- ggpmisc:::find_peaks(df$close, span = span)

    df.extr <- dplyr::mutate(df, maximum = "no")

    df.extr$maximum[loc.maximum] <- "yes"

    return(df.extr)

}
