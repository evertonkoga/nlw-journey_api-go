FROM golang:1.22.5-alpine

WORKDIR /app

COPY . .

RUN go mod download && go mod verify

RUN go build -o /bin/journey ./cmd/journey/journey.go

EXPOSE 8080

ENTRYPOINT [ "/bin/journey" ]