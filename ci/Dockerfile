FROM node:12-alpine AS builder

WORKDIR /app
RUN npm install -g @angular/cli

COPY package*.json /app/

RUN npm install

COPY . /app/

RUN ng build --prod

FROM nginx:stable-alpine
COPY nginx/default.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /app/dist/angular-csp/ /usr/share/nginx/html
