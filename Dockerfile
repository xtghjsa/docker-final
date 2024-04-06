FROM golang:1.22.0

WORKDIR /workspace

COPY go.mod go.sum ./

COPY tracker.db ./

RUN go mod download

COPY *.go ./

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /dockerfinaltest

CMD ["/dockerfinaltest"]
