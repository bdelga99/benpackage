#' Estimate beta function
#'
#' @param y A vector of n observations.
#' @param X A n x k matrix.
#'
#' @return The estimates of the linear regression coefficients.
#' @export
#'
#' @examples
#' vec <- c(1, 5, 6)
#' mat <- matrix( c(5, 1, 0, 3,-1, 2, 4, 0,-1), nrow=3, byrow=TRUE)
#' estimate_beta(vec, mat)
estimate_beta <- function(y,X) {
    beta_hat <- matlib::inv(t(X) %*% X) %*% (t(X) %*% y)
    return(beta_hat)
}