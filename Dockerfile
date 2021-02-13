FROM nginx:mainline-alpine
COPY public /usr/share/nginx/html
COPY nginx.conf /etc/nginx/nginx.conf
RUN apk --no-cache add curl
HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 CMD curl --fail -X HEAD localhost/index.html