


# R reshape를 활용한 데이터 마트 개발

# cast(melt된 data, formula, 요약치 계산 할 함수)

# -> formula : 행변수 ~ 열변수

# cast 이용, 엑셀의 피벗팅을 하듯 자료를 변환
# melt된 aqm을 이용하여 "~"를 y, x축의 dimension과 measure에 해당하는 변수값 표시
# install.packages("reshape2")
# a <- cast(aqm, day ~ month ~ variable)





# sqldf 이용한 데이터 분석




# plyr 



# data.table



# 데이터 탐색



# 결측값 처리



# 이상값 검색


x <- rnorm(100)
boxplot(x)