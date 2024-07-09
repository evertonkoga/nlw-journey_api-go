FROM golang:1.22.5-alpine as build

WORKDIR /app

COPY . .

RUN go mod download && go mod verify

RUN go build -o /bin/journey ./cmd/journey/journey.go

FROM scratch

WORKDIR /app

COPY --from=build /bin/journey .

EXPOSE 8080

ENTRYPOINT [ "./journey" ]