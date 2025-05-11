FROM node:lts-slim

RUN npm install -g --no-cache @redocly/cli@latest

# ENTRYPOINT は redocly に固定
ENTRYPOINT ["redocly"]
CMD ["--help"]
