# based on this slackoverflow conversation http://stackoverflow.com/questions/14171148/how-to-tell-cran-to-install-package-dependencies-automatically
check.and.install.packages <- function(list) {

    # guard
    if (class(list) != "character") {
        return(print("check.and.install.packages need a character argurment!"))
    }

    new.packages <- list[!(list %in% installed.packages()[,"Package"])]
    if(length(new.packages)) {
        install.packages(new.packages)
    } else {
        return(print("package or packages are already installed"))
    }

}


download.and.extract.zip <- function(url) {

    # prepare data folder
    if (!file.exists("_row_data")) {
      dir.create("_row_data")
    }

    # set zip destiny file
    filename <- "_row_data/dataset.zip"

    if (!file.exists(filename)){
        download.file(url, filename, method="curl")
        unzip(filename, exdir = "_row_data")
    }

}
