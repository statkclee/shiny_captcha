# 모형 파이프라인

run_main <- function() {
    source("00-library.R")
    
    source("01-ingest.R")
    
    source("02-preprocess.R")
    
    source("03-training.R")
    
    source("04-evaluate.R")
}

run_main()