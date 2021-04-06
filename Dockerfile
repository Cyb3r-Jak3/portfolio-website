FROM nginx:mainline-alpine
COPY public /usr/share/nginx/html
COPY nginx.conf /etc/nginx/nginx.conf
RUN nginx -c /etc/nginx/nginx.conf -t
RUN apk --no-cache add curl
HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 CMD curl --fail -I http://localhost