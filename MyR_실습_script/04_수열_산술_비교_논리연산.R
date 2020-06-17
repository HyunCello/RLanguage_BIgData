rep(1,3)   # 1을 3까지 반복

seq(1,3)   # 
1:3        # 1부터 3까지 나열
seq(1,11,by=2)    # seq() 함수에 by=n 옵션으로 n씩 증가하는 수열 생성
seq(1,11,length=6)
seq(1,11,length=8)

rep(2:5, 3)

a=1:10
a
a+a
a-a
a*a
a/a

a=c(2,7,3)
a
t(a)           # 트렌스포즈(transpose), 전치행렬을 구함 t()
A=a %*% t(a);A  # 행렬 곱 연산자 %*% 


mx=matrix(c(23,41,12,35,67,1,24,7,53), nrow=3)
mx
5*mx
solve(mx)     # 역행렬

5 > 3    # 5는 3보다 크다 비교
5 >= 6   # 5는 6보다 크거나 같다 비교
5 < 3    # 5는 3보다 작다 비교
5 <= 6   # 5는 6보다 작거나 같다 비교
5 == 5   # 5는 5와 같다 비교
5 != 5   # 5는 5와 같지 않다 비교

x <- 1:3     # 변수 x에 1,2,3 할당
y <- 3:1     # 변수 x에 3,2,1 할당

(x > 0) & (y > 1)   #x 값이 


a<-1:10
a
min(a)     # 최소값
max(a)     # 최대값
quantile(a)     # 분위수 전체 자료를 크기순으로 정렬할때 경계값
sum(a)     # 합계
log(a)     # 자연로그값
mean(a)     # 평균

var(a)     # 분산
sd(a)     # 표준편차

b<-log(a)
cov(a,b)     # 공분산
cor(a,b)     # 상관계수

summary(a)     # 요약


s <- 1:16
s
quantile(s)
16*0.25

w <- 1:17
w
quantile(w)
17*0.25

quantile(w, probs = 0.25)

