# Build
FROM jekyll/jekyll as build
WORKDIR /build
COPY . .
RUN chmod 777 -R /build
RUN jekyll build

# Serve
FROM nginxinc/nginx-unprivileged:1.18-alpine
COPY --from=build /build /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
