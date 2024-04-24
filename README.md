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

## Statement on Parquet File
When attempting to make a parquet file, I encountered this message which prevented me from downloading the necessary resources:

>Error in parquet___arrow___ArrowReaderProperties__Make(isTRUE(use_threads)) : Cannot >call parquet___arrow___ArrowReaderProperties__Make(). See https://arrow.apache.org/docs/r/articles/install.html for help installing Arrow C++ libraries.

The arrow package is an interface to the Apache Arrow C++ libraries, and Parquet is a columnar storage file format that is optimized for use with data analysis tools. The error message Cannot call parquet___arrow___ArrowReaderProperties__Make() specifically means that the R session tried to execute a function related to reading Parquet files but failed because it couldn't find the necessary underlying Arrow C++ library functions.

## Statement on LLM usage

LLMs were used for some aspects of the code, particularly in the data downloading script (01_clean_data.R), cleaning script (02_clean_data.R) and final paper (paper.qmd). The LLM used was ChatGPT. Receipts are available in the other/llms/usage.txt.
