# 난수 생성할때 일정하게 고정시켜줌
set.seed(1)
# d에 데이터 프래임을 입력
# year 변수에 2012년부터 2014년까지 6개씩의 값을 만들어준다.
# count 변수에 난수 발생 함수 runif를 사용하여 난수를 입력한다.
# runif(생성할 난수 개수, 최소값, 최대값)
# round 함수를 사용하여 정수화 시켜준다. - 반올림함
d = data.frame(year = rep(2012:2014, each=6), count=round(runif(9,0,20)))
print(d)

library(plyr)

data(iris); head(iris,3)
str(iris)

# adply : 배열을 받아 데이터 프레임으로 출력하기

#Sepal.Length >=5 & Species = setosa 인 data.frame 찾기
d1 <- adply(iris,1, function(row){row$Sepal.Length >=5 & row$Species == "setosa"})

# V1에 결과 출력
head(d1)

# V1 대신 변수명 지정하여 출력하기
d2 <- adply(iris,1, 
            function(row){
              data.frame(new_colname=c(row$Sepal.Length >=5 & row$Species == "setosa"))
              })

# new_colname에 결과 출력
head(d2)


# ddply : 데이터 프레임을 받아 데이터 프레임을 출력하기
# Species 별 Sepal.Length 평균 구하기
ddply(iris, .(Species), 
      function(sub){
        data.frame(sepal.length_mean = mean(sub$Sepal.Length))
        })

# 그룹 여러개 지정하기
# Species 별 Sepal.Width가 3.0보다 큰 경우의 평균 구하기
ddply(iris, .(Species, Sepal.Width>3.0),
      function(sub){
        data.frame(sepal.length_mean = mean(sub$Sepal.Length))
      })











# 야구 선수 정보가 기록된 데이터
data(baseball);head(baseball,100)

# CLE팀 정보 확인 : subset() 사용
head(subset(baseball, team=="CLE"))
# na.omit() 으로 NA를 제거한다.
data2 <- na.omit(baseball)
# 팀별 평균 g 구하기
sa <- ddply(data2,.(team),function(sub){mean(sub$g)})
head(sa,100)
sa2 <- ddply(data2,.(team), function(sub){data.frame(mean_g=c(mean(sub$g)))})
head(sa2,100)




