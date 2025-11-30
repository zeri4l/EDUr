# 데이터입력
ad <- c(18, 8, 10, 15, 12, 15, 14, 15, 17, 19, 20, 21, 22, 21, 25)
sales <- c(94, 70, 90, 100, 95, 100, 85, 95, 105, 105, 110, 105, 104, 105, 121)
 # 산포도 그리기
plot(ad, sales,
    xlab = "advertising cost",
    ylab = "sales",
    main = "Relationships between AC and sales",
    pch = 19)