library("knitr")
if (!dir.exists("code/ggplot2 code")) dir.create("code/ggplot2 code")
datafiles <- c("acs2014.csv", "countries2012.csv",
               "fathers.txt", "living.csv")
p <- purl("ggplot2code.Rnw")
read_chunk(p)
chunks <- knitr:::knit_code$get()
invisible(mapply(function(chunk, name) {
    if (!grepl("label",name)) {
        file_dir <- file.path("code", "ggplot2 code")
        file_path <- file.path(file_dir, paste0(name, ".R"))
    writeLines(c(paste0("## ----",name,"----"), chunk), file_path)
        newfile <- readLines (file_path)
        for (i in seq_along(datafiles)) { # check the data files by name
            if (sum(grepl(datafiles[i],newfile)) > 0) {  # if mentioned
                if (!file.exists(file.path(file_dir,datafiles[i]))) {
                    # and doesn't exist in directory
                    file.copy(file.path(datafiles[i]), # copy it in
                              file.path(file_dir,datafiles[i]))
                }
            }
        }

    }
}, chunks, names(chunks)))
unlink(p) # delete the original purl script
knitr:::knit_code$restore() # remove chunks from current knitr session
