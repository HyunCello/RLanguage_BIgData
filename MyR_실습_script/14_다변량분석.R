
#### 다변량 분석######
install.packages("Hmisc")
library(Hmisc)

# mtcars 데이터를 이용한 상관분석

data(mtcars)
head(mtcars)

# drat, disp 산점도 그리기
drat <- mtcars$drat
disp <- mtcars$disp
plot(drat,disp)


# 두 변수의 상관계수
cor(drat, disp)

# 피어슨 상관계수
rcorr(as.matrix(mtcars), type="pearson")


# 스피어만상관계수
rcorr(as.matrix(mtcars), type="spearman")


# 다차원 척도법 
# 도시 사이의거리를 맵핑한 자료
# 각 도시 사이의 거리를 포함하는 행렬 형태의자료
data(eurodist)
eurodist

# 각 도시의 상대적 위치를 도식화 할 수 있는 X,Y 좌표를 계산하고 그래프로 표시
loc <- cmdscale(eurodist)
loc
x <- loc[,1]
y <- loc[,2]
plot(x,y,type="n", main="eurodist")
text(x,y,rownames(loc),cex=0.8)
abline(v=0,h=0)
# 결론 : 개채 간의 유사성에 대한 자료를 사용하여 산점도를 그릴 수 있다.




# 주성분 분석
# USArrests 자료 : 미국 50개주 10만명당 체포된 세가지 강력범죄 수와 각 주 도시 거주율
library(datasets)
data("USArrests")
pairs(USArrests, panel=panel.smooth, main="USArrests data")

summary(USArrests)

# princomp 함수를 이용하여 주성분분석 수행
# cor=TRUE 옵션으로 공분산행렬이 아닌 상관계수 행렬을 사용
fit <- princomp(USArrests, cor=TRUE)
summary(fit)

# 주성분들의 로딩 벡터
loadings(fit)

# 주성분 분석 그래프
# 각주성분의 분산의 크기를 그림으로 그려줌. 스크리그림(Scree plot)
plot(fit, type="lines")

# 관측치를 주성분들을 표현한 값을 나타냄
fit$scores

# 관측치들을 첫번째와 두번째 주성분의 좌표에 그린 그림
biplot(fit)
