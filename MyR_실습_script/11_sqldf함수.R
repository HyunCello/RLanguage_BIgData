install.packages("sqldf")   # sqldf 패키지 설치
library(sqldf)              # sqldf 패키지 로드

head(iris)        # iris 데이터 보기
str(iris)         # iris 데이터 형식 보기

# iris 데이터 모두 보기
sqldf("select * from iris")

# iris 데이터에서 Species의 종류 보기
sqldf("select distinct species from iris")
# iris 데이터에서 species의 종류별 개수 보기
sqldf("select Species, count(*) from iris group by Species")

# iris 데이터에서 10개 행만 보기
sqldf("select  Species from iris limit 10")

# like 문장을 사용할경우 ''을 사용
sqldf("select count(*) from iris where species like 'se%' ")


head(iris)
sqldf("select * from iris limit 6")
subset(iris, Species %in% c("virginica","versicolor"))
sqldf("select * from iris where Species in ('virginica','versicolor')")
merge(iris,iris3)
sqldf("select * from iris, iris3 ")
