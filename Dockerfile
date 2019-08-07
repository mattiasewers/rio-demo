
FROM golang:1.12.1-alpine3.9
ENV GOPATH="/go"
RUN ["mkdir", "-p", "/go/src/github.com/mattiasewers/demo"]
COPY * /go/src/github.com/mattiasewers/demo/
WORKDIR /go/src/github.com/mattiasewers/demo
RUN ["go", "build", "-o", "demo"]
CMD ["./demo"]
