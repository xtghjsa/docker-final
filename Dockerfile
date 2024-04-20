FROM golang:1.22.0

WORKDIR /workspace

COPY . .

RUN go mod download

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /dockerfinaltest

CMD ["/dockerfinaltest"]
