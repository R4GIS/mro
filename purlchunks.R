purled <- knitr::purl("CEGMRO.Rnw")
lines <- readLines(purled)
remove <- grepl("getfigopts", lines)
lines <- lines[!remove]
lines <- gsub(", out\\.width.+textwidth'", "", lines)
lines <- gsub(",[ ]+echo[ =]*FALSE", "", lines)
starts <- grep('^## ----.*-+', lines)
stops <- c(starts[-1] - 1L, length(lines))
names <- sub('^## ----([^-]([^,=]*[^,=-])*)[,-][^=].*',
             '\\1', lines[starts])
names <- ifelse(names == lines[starts], '', names)
lookup <- read.csv ("folders.csv", stringsAsFactors = FALSE)
datafiles <- c("acs2014.csv", "countries2012.csv",
               "fathers.txt", "living.csv")
file_names <- paste0(names, '.R')
if (!dir.exists("code")) dir.create("code")
for(chunk in seq_along(starts)) {
    if (nchar(file_names[chunk]) > 2) {
        index <- which(lookup$plot == names[chunk])
        file_dir <- file.path ('code',lookup$section[index])
        if(!dir.exists(file_dir)) dir.create(file_dir)
        file_path <- file.path(file_dir, file_names[chunk])
        writeLines(lines[starts[chunk]:stops[chunk]],
                   con = file_path)
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
}
unlink(purled)
