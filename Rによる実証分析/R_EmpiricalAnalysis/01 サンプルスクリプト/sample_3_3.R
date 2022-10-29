### Sample_3_3.r
### 条件付き期待値の計算

X <- read.csv("data_Males.csv") # データ読み込み
sch12 <- X[X$school==12,]      # 高校卒業者の抜き出し
sch16 <- X[X$school==16,]      # 学部卒業者の抜き出し
exp( mean(sch12$wage) )        # 高校卒業者の平均賃金
exp( mean(sch16$wage) )        # 学部卒業者の平均賃金
