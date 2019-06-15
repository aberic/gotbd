FROM golang:1.12.6 as builder
LABEL app="gotbd" by="aberic"
RUN go get golang.org/x/sys/unix && \
 go get golang.org/x/lint/golint && \
 go get github.com/fzipp/gocyclo && \
 go get github.com/jgautheron/goconst/cmd/goconst && \
 go get honnef.co/go/tools/cmd/staticcheck && \
 go get github.com/client9/misspell/cmd/misspell && \
 go get github.com/fzipp/gocyclo && \
 go get github.com/go-playground/overalls && \
 go get github.com/mattn/goveralls && \
 go get github.com/smartystreets/goconvey
