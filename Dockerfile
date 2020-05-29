FROM nginx:stable-alpine
# COPY nginx/default.conf /etc/nginx/conf.d/default.conf
COPY dist/angular-csp/ /usr/share/nginx/html
