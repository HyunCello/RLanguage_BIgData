# 사용자 정의 함수
# 입력한 인수 a 까지의 합을 계산해주는 함수 addto를 선언
addto = function(a) {
  isum = 0                # isum의 값을 0으로 초기화 
  for (i in 1:a) {        # i는 1부터 a까지 반복하도록 선언
    isum = isum + i       # isum의 값은 isum + i 를 a 만큼 반복
  }
  print(isum)
}
# addto 함수의 인수 a에 100을 입력
addto(100)

# addto 함수의 인수 a에 50을 입력
addto(50)


help("function")
