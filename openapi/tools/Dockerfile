# Dockerfile
FROM golang:1.24-alpine

# コード生成ツールに必要なツールをインストール
RUN apk --no-cache add git

# oapi-codegen をインストール
RUN go install github.com/oapi-codegen/oapi-codegen/v2/cmd/oapi-codegen@v2.4.0