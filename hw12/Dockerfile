FROM golang:latest AS builder

WORKDIR /app

COPY . .

RUN go mod init memc_load_parallel && \
    go mod tidy && \
    go mod download

RUN CGO_ENABLED=0 GOOS=linux go build -o memc_load_parallel memc_load_parallel.go

FROM alpine:latest

RUN apk --no-cache add ca-certificates

WORKDIR /root/

COPY --from=builder /app/memc_load_parallel .

CMD ["./memc_load_parallel"]
