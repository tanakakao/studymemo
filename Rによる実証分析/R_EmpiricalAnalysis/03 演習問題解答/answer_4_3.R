### answer_4_3.r
### –â‘è4.3‚Ì‰ð“š—á

data <- read.csv("data_Males.csv") # ƒf[ƒ^“Ç‚Ýž‚Ý

# 4.3(1)
rec<-with(data, lm(wage~school))
with(data,plot(school,wage))
abline(rec)

# 4.3(2)
summary(rec)

# 4.3(3)
summary(with(data,lm(wage~school+exper)))
