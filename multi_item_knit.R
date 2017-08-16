library(plyr)
library(knitr)

surveydata <- get(winDialogString("enter data frame to process", default="df"))

if(winDialog(type="yesno", "Do you want to summarize a subset of your data?") == "YES"){
  
  fieldlist <- names(surveydata)
  fieldselect <- select.list(fieldlist, graphics= TRUE, multi = FALSE, 
                           title="Select Field to Filter by")
  valuelist = names(table(surveydata[,fieldselect]))
  valueselect = select.list(valuelist, graphics= TRUE, multi = TRUE, 
                           title="Select Desired Values")
  surveydata <- surveydata[surveydata[,fieldselect] %in% valueselect,]
  cat(paste("Filtering by: ",fieldselect, "=", valueselect, sep=" "))

}

nrecs <- nrow (surveydata)


if(winDialog(type="yesno", "Select markdown (*.Rmd) file.  Click no if previously done this session.") == "YES"){
  
  markdown.f <- file.choose()
}

knitr::knit2html(markdown.f)