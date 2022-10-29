rm(list=ls())
set.seed(2)

 # 第6章：シミュレーション #

 n     <- 400 # サンプルサイズ
 err   <- runif(n,30,60) # 誤差項（家庭環境）
 hours <- rnorm(n, err/10, 1) - 4
 hours <- round(ifelse(hours < 0, 0, hours), 1) # ゲーム時間
 Y     <- 20 + rnorm(n, 100, 10) - 1.2*err
 grade <- round(ifelse(Y > 100, 100, Y)) # 成績

 write.csv(cbind(grade,hours), "Ch6.data.csv")