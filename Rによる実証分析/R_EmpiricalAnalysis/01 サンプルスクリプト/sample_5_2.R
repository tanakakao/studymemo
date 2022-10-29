### sample_5_2.r
### 賃金の重回帰分析

# データの読み込み
data <- read.csv("data_Males.csv")

# 重回帰分析
result <- summary(with(data, lm(wage~school+exper)))

# 信頼区間の構成
betahat <- result$coefficients[,1]
sigma <- result$coefficients[,2]
lower <- betahat-1.96*sigma
upper <- betahat+1.96*sigma
CI <- data.frame(lower.bound=lower, upper.bound=upper)

# 結果の出力
result
CI
