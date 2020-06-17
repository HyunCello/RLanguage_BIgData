# 데이터 테이블 data.table()
install.packages("data.table")     # data.table 패키지 설치
library(data.table)                # data.table 패키지 로드

# 데이터 테이블 생성, 행 번호가 :으로 출력됨,  rnorm으로 정규분포에서 5개의 난수 생성
DT = data.table(x=c("b","b","b","a","a"),v=rnorm(5))
DT
# 데이터 프레임으로 생성 비교하기
DF = data.frame(x=c("b","b","b","a","a"),v=rnorm(5))
DF

# x와 y 변수로 구성된 3*3 데이터테이블 DT1 생성
DT1 <- data.table(x=c(1,2,3), y=c("a","b","c"))
DT1

# 데이터 프레임 iris를 데이터 테이블로 생성
head(iris,3); str(iris)
d <- as.data.table(iris)  # iris 데이터 프레임을 데이터 테이블로 생성
d
str(d)                      # data.table d의 구성 형태 확인
# data.table과 data.frame을 동시에 가지므로 data.frame에 적용되는 summary, print, plot등 적용 가능



# 생성된 테이블 목록, 용량, key 정보 보기
tables()
sapply(DT,class)       # DT의 컬럼명과 형식 조회
sapply(iris, class)    # irisdml 컬럼명과 형식 조회
DT                     # DT 조회
DT[2,]                 # DT 2번째 행 조회

# DT의 x를 key로 지정 후 테이블 조회를 통한 KEY 정보 확인
setkey(DT,x)
DT
tables()           

# 데이터 접근과 그룹 연산
# DT에 "b"가 들어간 모든 데이터 조회
DT["b",]  # 혹은 DT["b"]
DT["b",mult="first"]
DT["b",mult="last"]

iris_table <- as.data.table(iris)
head(iris_table, 3)
iris_table[1,]
iris_table[iris_table$Species=="setosa",]
iris_table[1,Sepal.Length]    # 1행 & Sepal.Length
iris_table[1,list(Sepal.Length, Species)]


# 연산 : 컬럼명 그대로 사용
# Sepal.Length 의 평균
iris_table[,mean(Sepal.Length)]

iris[1,1]
iris_table[1,1]

iris[1,c("Sepal.Length")]
iris_table[1,c("Sepal.Length")]

# by 데이터 그룹 변수 지정
result <- iris_table[,mean(Sepal.Length), by="Species"]
colnames(result)[2] <- "평균"
result


# key를 사용한 탐색
# data.frame의 탐색 수행 시간 조회
d <- data.frame(x=runif(2600000), y=rep(LETTERS, each=100000))
head(d,4)
# data.frame 총 수행시간(elapsed time)
system.time(x <- d[d$y=="C",])    
# d를 데이터테이블로 생성
dt <- as.data.table(d)  
# y를 key로 셋팅
setkey(dt,y)  
# key를 사용한 data.table 총 수행시간(elapsed time)
system.time(x <- dt[J("C"),])     






# key 이용한 연산
dt[dt$y=="C",mean(x)]
dt[J("C"),mean(x)]

system.time(dt[dt$y=="C",mean(x)])
system.time(dt[J("C"),mean(x)])


dt[J("C"),list(mean=mean(x), sd=sd(x))]


# key를 사용한 테이블 병합
dt1 <- data.table(x=runif(2600000),y=rep(LETTERS, each=10000))
dt2 <- data.table(y=c("A","B","C"),z=c("a","b","c"))
head(dt1)
dt2
setkey(dt1,y)     # dt1의 y 변수에 key 적용
dt1[dt2,]         # dt1에서 y값이 A,B,C인 행을 찾아 병합

setkey(dt2,y)     # dt2의 y 변수에 key 적용
dt2[dt1,]         # dt2에서 y값이 A,B,C,...,Z 행을 찾아 병합

