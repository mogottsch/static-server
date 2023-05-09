FROM nginx:latest

COPY nginx.conf /etc/nginx/nginx.conf
COPY static /app/static

CMD ["nginx", "-c", "nginx.conf"]
