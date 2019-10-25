FROM golang:1.12 as builder

ADD my-app.go /src/my-app.go
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -ldflags="-w -s" -o /dist/my-app /src/my-app.go

FROM scratch

COPY --from=builder /dist/my-app /my-app

EXPOSE 8080
ENV GREETING "Hello world!"
ENTRYPOINT ["/my-app"]
