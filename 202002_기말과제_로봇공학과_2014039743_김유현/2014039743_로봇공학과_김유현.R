print("Hello World")
#word_data <-readLines(file("/Users/jeremykim/202002_기말과제_로봇공학과_2014039743_김유현/애국가(가사).txt",encoding = "EUC-KR"))
#word_data

setwd("/Users/jeremykim/202002_기말과제_로봇공학과_2014039743_김유현")
#install.packages("readxl")
kor_person <-readxl::read_excel(path = "201012_201912_주민등록인구및세대현황_연간.xlsx",
                                sheet = "주민등록 인구 및 세대현황",
                                col_names = TRUE)
kor_person

#View(kor_person)

#str(kor_person)

#dim(kor_person)

#ls(kor_person)
library(dplyr)
kor_person1 <-rename(kor_person,org_nm=행정기관,tot_cnt=총인구수,cnt=세대수)
#View(kor_person1)
table1 <- table(kor_person1$tot_cnt) 
table1
barplot(table1)