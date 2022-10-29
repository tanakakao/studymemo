rm(list=ls())
set.seed(1)

 # 第8章：シミュレーション #

 n     <- 40 # サンプルサイズ
 motiv <- runif(n, 0,40) # 学習意欲
 err   <- runif(n,30,60) # 誤差項（個人の能力）
 T     <- ifelse(motiv > 20, 1, 0) # 出席率
 Y     <- round(motiv + err) # 成績

 # 散布図プロット #

 par(ps = 18)
 plot(T,Y,xlim=c(-0.5,1.5),ylim=c(0,100),xaxt="n",cex=2)
 axis(side=1, at=c(0,1))

 # 平均値 #

 mean(Y[which(T == 1)]) # 出席率50%以上の学生の平均点
 mean(Y[which(T == 0)]) # 出席率50%未満の学生の平均点

 # 最低点 #

 min(Y[which(T == 1)]) # 出席率50%以上の学生の最低点
 min(Y[which(T == 0)]) # 出席率50%未満の学生の最低点

 # 最高点 #

 max(Y[which(T == 1)]) # 出席率50%以上の学生の最高点
 max(Y[which(T == 0)]) # 出席率50%未満の学生の最高点

 write.csv(cbind(Y,T,motiv), "Ch8.data.csv")