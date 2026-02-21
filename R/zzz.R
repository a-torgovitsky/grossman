.onAttach <- function(libname, pkgname) {
  packageStartupMessage(
    "Note: Use grossman::load() and grossman::list() directly.\n",
    "Do not use library(grossman) - it masks base R functions.\n",
    "Example: df <- grossman::load(\"eskom\")"
  )
}
