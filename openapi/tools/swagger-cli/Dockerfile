# swagger-cli は Node 製なので公式 node イメージをベースにする
FROM node:lts-slim

# グローバルインストール。--no-cache でキャッシュを抑える
RUN npm install -g --no-cache swagger-cli@latest

ENTRYPOINT ["swagger-cli"]
CMD ["--help"]
