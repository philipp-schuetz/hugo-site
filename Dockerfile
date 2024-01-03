FROM debian:bookworm-slim
RUN apt update && apt install -y hugo
WORKDIR /app
COPY . .
CMD hugo serve --minify -p 8004 --bind "0.0.0.0" -b "https://philippschuetz.com/" --appendPort=false --disableLiveReload