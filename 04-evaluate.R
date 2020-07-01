# 모형 평가

tic()

captcha_df <- captcha_df %>% 
    mutate(text = map_chr(captcha, break_captcha)) %>% 
    mutate(text = str_remove(text, "\n")) %>% 
    mutate(matching = ifelse(label == text, 1, 0))

captcha_accuracy <- captcha_df %>% 
    summarise(accuracy = mean(matching)) %>% 
    pull

toc()

cat("----------------------------------------------------------------\n")
cat("- 정확도: ", round(captcha_accuracy * 100, 2), " %\n")
cat("----------------------------------------------------------------\n")
