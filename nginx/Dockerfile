FROM nginx:latest

RUN apt-get update \
    && apt install -y wget libnss3-tools \
    && export VER="v1.3.0" \
    && wget -O mkcert https://github.com/FiloSottile/mkcert/releases/download/${VER}/mkcert-${VER}-linux-amd64 \
    && chmod +x  mkcert \
    && mv mkcert /usr/local/bin \
    && mkcert -install \
    && mkcert localhost 127.0.0.1 ::1 \
    && mkdir /etc/nginx/ssl \
    && mv localhost+2.pem /etc/nginx/ssl/localhost.pem \
    && mv localhost+2-key.pem /etc/nginx/ssl/localhost.pem
