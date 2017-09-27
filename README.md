# R_markdown_summarize_qualtrics
Designed to summarize multi-item survey questions in qualtrics. 

The file operates on a dataframe already loaded into your workspace, and assumes factors are defined similarly for each sub-item, use https://github.com/damapak/R-apply-levels-to-data-frame to standardize the levels across your fields.

To use, download the files.  Source() the 'multi_item_knit.R' from within R.  You will be prompted to select the R markdown file you would like to use, navigate to where you saved the 'markdown_test.Rmd' and select it to use.  It will output a '.md' file you can view in notepad or other text editor, as well as an html file you can view in a browser.  Output files are saved to your R working directory, so you may want to set your working directory with setwd() prior to running the multi_item_knit.R file.
