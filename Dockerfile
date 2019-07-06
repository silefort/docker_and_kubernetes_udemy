FROM node:alpine as builder

WORKDIR '/app'
COPY docker-react/package.json .
RUN npm install
COPY docker-react .
RUN npm run build

FROM nginx
EXPOSE 80
COPY --from=builder /app/build /usr/share/nginx/html
