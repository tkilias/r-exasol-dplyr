#' @docType package
#' @name exasol.dplyr-package
#' @aliases exasol.dplyr
#' @exportPattern ^[[:alpha:]]+
#' @import exasol
#'
#' @title Dplyr addon for the exasol R package
#'
#' @description This package adds dplyr compatibility to the EXASOL R package.
#' 
#' The EXASOL R Package offers interface functionality such as connecting to, querying
#' and writing into an EXASOL Database (version 5 onwards). It is optimised for massively parallel
#' reading & writing from and to a multinode cluster. Implemented are DBI compliant methods for database
#' access, querying and modiifcation. The package integrates with EXASOL's InDB R UDF capabilities, which
#' allows to deploy and execute R code dynamically from an R application running on a client.
#'
#' EXASOL is an InMemory RDBMS that runs in a MPP cluster (shared-nothing) environment. Leading the TPC-H
#' benckmark, it is considered the fastest analytical data warehouse available. The community edition
#' can be downloaded for free on \url{https://www.exasol.com/portal}.
#'
#'
#' @author EXASOL AG & Community
#'
#' Maintainer: \packageMaintainer{exasol.dplyr}
#'
#' @references
#'
#' \enumerate{
#' \item The development version of the package is available on \url{https://github.com/EXASOL/r-exasol}
#' \item Bugs and improvements may be noted on \url{https://github.com/EXASOL/r-exasol/issues}
#' \item Downloads & manuals related to the EXASOL Database are at \url{https://www.exasol.com/portal}
#' \item Q & A: \url{https://www.exasol.com/portal/questions}
#'}
#' @keywords sql
#' @keywords distributed
#' @keywords in-memory
#' @keywords dplyr
NULL


.onAttach <- function(libname, pkgname) {
  # show startup message
  message <- paste("EXASOL Addon for Dplyr", utils::packageVersion("exasol"), "loaded.")
  packageStartupMessage(message, appendLF = TRUE)
}
