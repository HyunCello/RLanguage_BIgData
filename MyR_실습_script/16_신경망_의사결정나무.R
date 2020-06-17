install.packages("nnet")
install.packages("neuralnet")
install.packages("rpart")
install.packages("rpart.plot")

library(nnet)
library(neuralnet)



# 단층신경망구조
net.infert <- neuralnet(case~age+parity+induced+spontaneous, data=infert, hidden=2, err.fct="ce", linear.output=FALSE, likelihood=TRUE)
net.infert

plot(net.infert)

names(net.infert)

#다층신경망구조
train.input <- as.data.frame(runif(50, min=0, max=100))
train.output <- sqrt(train.input)
train.data <- cbind(train.input, train.output)
colnames(train.data) <- c("Input","Output")
head(train.data)

# 10개의 은닉층과 10개의 은닉노드를 가지는신경망모형
# threshold=옵션은 오차함수 편미분에 대한 값으로 정지규칙(stopping rule)으로 사용
net.sqrt <- neuralnet(Output~Input,train.data, hidden=10, threshold=0.01)
print(net.sqrt)

plot(net.sqrt)


# 의사결정나무 분석
library(rpart)
c <- rpart(Species ~., data=iris)
c
plot(c, compress=T, margin=0.3)
text(c, cex=1.5)

head(predict(c, newdata=iris, type="class"))
tail(predict(c, newdata=iris, type="class"))

library(rpart.plot)
prp(c, type=4, extra=2)

