if(1 > 0) {        # 1이 0보다 클 경우
  print("1은 0보다 크다")
}else{
  print("1은 0보다 작다")
}

score <- 60       # score변수에 초기값 60 설정
if(score<= 100 & score>= 90){  
  grade <- "A"    # score가 100과 같거나 작고 90과 같거나 클때
}else if(score < 90 & score >= 80){
  grade <- "B"    # score 가 90보다 작고 80과 같거나 클때
} else {
  grade <- "C"    # score 가 모든 조건에 충족되지 않을때
}
grade

x <- 1            # x에 초기값 1을 설정
if (x == 1) print("x는 1이다.")  # x가 1과 같을때


v1 <- c(1,2,3,-1,-2)
v2 <- ifelse(v1>0,"양수","음수")
v2

df1 <- data.frame(v1,v2)
df1
