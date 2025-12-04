eunhyeok3 <- read.csv('C:/Users/inst_/OneDrive/바탕 화면/효령대군거리_edited.csv')
View(eunhyeok3)

# 1단계: 회귀분석 모델 생성 및 저장
result_model <- lm(gongsijiga ~ distance, data = eunhyeok3)

# 2단계: 결과 요약 보기 (P-value, 결정계수 확인)
summary(result_model)

-
  
  # 1. 패키지 로드 (없으면 install.packages("ggplot2") 실행)
  library(ggplot2)

# 2. 그래프 그리기
ggplot(data = eunhyeok3, aes(x = distance, y = gongsijiga)) +
  
  # (1) 산점도 (데이터 점 찍기)
  geom_point(color = "darkgrey", alpha = 0.6) + 
  
  # (2) 회귀선 그리기 (method='lm'이 핵심)
  # se = TRUE는 회귀선 주변의 회색 신뢰구간(95%)을 표시합니다.
  geom_smooth(method = "lm", color = "blue", se = TRUE) +
  
  # (3) 그래프 제목 및 축 라벨 설정
  labs(title = "왕릉 거리와 공시지가의 관계 (회귀분석)",
       subtitle = "거리(Distance)에 따른 공시지가(Price) 변화 추이",
       x = "거리 (m)",
       y = "공시지가 (원)") +
  
  # (4) 깔끔한 테마 적용
  theme_minimal()