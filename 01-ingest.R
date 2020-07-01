# 데이터 가져오기 

file_names <- list.files("dataset/")

captcha_labels <- str_extract(file_names, "[\\w\\d]+?(?=\\.)")

captcha_df <- tibble(label = captcha_labels, 
                     captcha = glue("dataset/{file_names}"))

captcha_df %>% 
    write_rds("processed/captcha_df.rds")

