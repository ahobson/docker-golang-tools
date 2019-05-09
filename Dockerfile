FROM golang:1.12-stretch
RUN set -x \
        && git clone https://github.com/saibing/tools.git /app
WORKDIR /app/cmd/gopls
RUN go install
CMD ["/go/bin/gopls"]
