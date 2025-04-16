# Dockerfile
FROM golang:1.20-alpine

# コード生成ツールに必要なツールをインストール
RUN apk --no-cache add git

# oapi-codegen をインストール
RUN go install github.com/deepmap/oapi-codegen/cmd/oapi-codegen@latest

# # ENTRYPOINT をシェルにすることで、
# # `docker compose run ... oapi-codegen ...` の形でコマンドを指定可能
# ENTRYPOINT ["/bin/sh", "-c"]
