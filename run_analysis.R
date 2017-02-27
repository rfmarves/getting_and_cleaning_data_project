require(knitr)
require(markdown)
# Code is writen as embedded chuncks in readme file explaining the execution
# This next line will execute the code contained in the readme file
knit("README.Rmd", encoding="ISO8859-1")
markdownToHTML("README.Rmd", "README.html")