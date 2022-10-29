### answer_4_2.r
### –â‘è4.2‚Ì‰ð“š—á

data <- read.csv("data_3_2.csv")	# ƒf[ƒ^‚Ì“Ç‚Ýž‚Ý

# 4.2(1)

rec <- with(data, lm(icecream~income))
plot(data$income,data$icecream)
abline(rec)

# 4.2(2)

summary(with(data, lm(icecream~income+u15)))