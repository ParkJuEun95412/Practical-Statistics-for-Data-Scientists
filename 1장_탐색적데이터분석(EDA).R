state <- read.csv(file='c:/r/data/state.csv')
state

#참고. 데이터프레임내에 컬럼을 부르는 방식(데이터프레임 요소에 접근)
state$Population #$
state[["Population"]] #[[]]
attach(state) #attach함수를 이용하여 속성을 변수로 만듦
detach(state) #detach함수 이용하여 속성의 변수 사용 해제

mean(state$Population) # 평균
# 6162876
mean(state$Population,trim=0.1) # 절사평균
# 4783697
median(state$Population) # 중위값(중간값)
# 4436370

#가중평균
weighted.mean(state[['Murder.Rate']],w=state[['Population']])
# 4.445834

#가중중간값 계산을 위해 패키지 설치
install.packages("matrixStats")
library(matrixStats)

weightedMedian(state[['Murder.Rate']],w=state[['Population']])

# 로버스트하다. 극단값에 덜 민감하다
# 평균에 비해 중위값이나 절사평균이 좀 더 로버스트하다.

