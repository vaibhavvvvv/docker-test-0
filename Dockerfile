FROM golang:1.12.0-alpine3.9
RUN mkdir /app   
# creating app directory inside above image
ADD . /app
WORKDIR /app
RUN go build -o main .
CMD ["/app/main"] 
# go inside app dir and run main.go


# on terminal
# docker build -t docker-test .  
# docker image ls  
# docker run -p 8080:8081 -it docker-test 