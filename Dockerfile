FROM golang:1.22.0

WORKDIR /workspace

COPY go.mod go.sum ./

COPY tracker.db ./

RUN go mod download

COPY *.go ./

CMD ["/dockerfinaltest"]
