# 라이브러리 불러오기

captcha_df <- read_rds("processed/captcha_df.rds")

alphabet <- paste(letters, collapse="")

whitelist <- glue::glue("1234567890{alphabet}")

break_captcha <- function(image) {
    
    captcha_orig <- image_read(image) # 226md
    
    img_processed <- captcha_orig %>% 
        image_convert(colorspace = 'gray') %>%
        image_threshold(threshold = "50%", type = "white")
    
    captcha_text <- tesseract::ocr(img_processed, engine = tesseract(language = "eng",
                                                                     options = list(tessedit_char_whitelist = whitelist)))  
    return(captcha_text)
}

