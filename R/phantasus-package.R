#' Example pathway data.frame for fgsea tool
#'
#' @docType data
#' @name fgseaExample
NULL

.onLoad <- function(libname, pkgname) {
  library(withr)
  withr::with_dir(tempdir(), {
    Sys.setenv("PHANTASUS_CACHE_ROOT" = "/root/.cache/R/phantasus")
    Sys.setenv("PHANTASUS_GEO_CACHE" = "/root/.cache/R/phantasus/geo")
    Sys.setenv("PHANTASUS_ANNOTATIONDB" = "/root/.cache/R/phantasus/annotationdb")
    Sys.setenv("PHANTASUS_FGSEA_PATHWAYS" = "/root/.cache/R/phantasus/fgsea_pathways")
    Sys.setenv("PHANTASUS_RNASEQ_COUNTS" = "https://alserglab.wustl.edu/hsds/?domain=/counts")

    setupPhantasus()
  })
}
