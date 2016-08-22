# Getting And Cleaning Data Project

### introduction

This is the course project for the Getting and Cleaning Data Coursera course, part of the Data Science Spezialization.
The main R script (run_analysis.R) that contain this repository basically does:

1. Download UCI HAR zip file to "_row_data" dir
2. Reads the appropiate data
3. Cleans the data following the coursera instructions (see copy at "_helpers/INSTRUCTIONS.md")
4. Write output data to a CSV file inside "_output_data" dir, after run the script.

For futher information please see CodeBook.md at this repository

## How run the R script

1. Open the terminal and clone this repo and enter the GettingAndCleaningData created directory
2. Run the script:
    * if using RStudio: open the file (Menu > File > Open File ...) source and run the script
    * if using Ubuntu, run the command
```shell
    $ Rscript run_analysis.R
```
3. See the result csv file at _output_data/tidyData.csv
















##
