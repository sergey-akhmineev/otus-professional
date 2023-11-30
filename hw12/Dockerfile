FROM golang:latest AS builder

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY . .

COPY appsinstalled/ appsinstalled/

RUN CGO_ENABLED=0 GOOS=linux go build -o memc_load_parallel .

FROM alpine:latest

RUN apk --no-cache add ca-certificates

WORKDIR /root/

COPY --from=builder /app/memc_load_parallel .

CMD ["./memc_load_parallel"]
