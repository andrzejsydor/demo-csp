# Best way to run demo

```
docker run --rm -it -p 80:80 andrzejsydor/demo-csp
```

# CSP - configuration

## Server configuration

CSP configured in default.conf file for the `nginx` server

## meta tag configuration

```html
<meta http-equiv="Content-Security-Policy" content="default-src 'self'; child-src 'none'; object-src 'none'">
```

# Docker

```
docker build -t angular-csp -f ci/Dockerfile .
docker run -p 80:80 --rm -it angular-csp
```

```
docker build --no-cache -t angular-csp-local .
docker run -p 80:80 --rm -it angular-csp-local
```

# Local usage

## Run Development server

Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The app will automatically reload if you change any of the source files.

## Build 

Run `ng build --prod` to build the project. The build artifacts will be stored in the `dist/` directory.
