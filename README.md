# Jean Pockets and Gender

## Overview

This repo contains a data analysis project associated with Telling Stories with Data. This paper aims to reproduce the findings from Women´s Pockets are Inferior by Jan Diehm & Amber Thomas. And explore if gender disparities extend to pricing. 


## File Structure

The repo is structured as:

-   `data/raw_data` contains the raw data as obtained from Women´s Pockets are Inferior by Jan Diehm & Amber Thomas.
-   `data/analysis_data` contains the cleaned dataset that was constructed.
-   `model` contains fitted models. 
-   `other` contains details about LLM chat interactions, and sketches.
-   `paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper. 
-   `scripts` contains the R scripts used to simulate, download and clean data.


## Statement on LLM usage

LLMs were used for some aspects of the code, particularly in the data downloading script (01_clean_data.R), cleaning script (02_clean_data.R) and final paper (paper.qmd). The LLM used was ChatGPT. Receipts are available in the other/llms/usage.txt.


## Some checks

- [ ] Remove files that you're not using
- [ ] Update comments in R scripts
- [ ] Remove this checklist