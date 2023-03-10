FROM golang:1.19

COPY . /go/src/app

WORKDIR /go/src/app/cmd/

RUN go build -o map main.go

EXPOSE 8080

CMD ["./map"]