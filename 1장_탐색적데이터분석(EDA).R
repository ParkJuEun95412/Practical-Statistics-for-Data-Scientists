state <- read.csv(file='c:/r/data/state.csv')
state

#참고. 데이터프레임내에 컬럼을 부르는 방식(데이터프레임 요소에 접근)
state$Population #$
state[["Population"]] #[[]]
attach(state) #attach함수를 이용하여 속성을 변수로 만듦
detach(state) #detach함수 이용하여 속성의 변수 사용 해제

mean(state$Population) #평균
mean(state$Population,trim=0.1) #절사평균
median(state$Population) #중위값(중간값)
