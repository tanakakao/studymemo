set.seed(1)

 # 第10章：シミュレーション #

 N    <- 200           #  サンプルサイズ
 abil <- rnorm(N,0,10) #　能力
 Z    <- apply(cbind(rnorm(N, 60, 8) + abil, 100), 1, min)
 T    <- ifelse(Z < 60 , 1, 0)

 Y <- apply(cbind(rnorm(N, 55, 6) + sqrt(Z) + T*10 + abil, 100), 1, min)

 plot(Z,Y, ylim = c(20,100), xlim = c(20,100), xlab = "Z: 前期試験点数", ylab = "Y: 後期試験点数")
 abline(v = 60, col='red', lwd=2, lty=2)

 write.csv(cbind(Y,Z), "Ch10.data.csv")