FROM golang:1.12.3-alpine3.9
RUN mkdir /app
ADD . /app/
WORKDIR /app
RUN CGO_ENABLED=0 GOOS=linux go build -o main main.go
EXPOSE 8080
CMD ["/app/main"]