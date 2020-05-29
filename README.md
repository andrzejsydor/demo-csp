# CSP - configuration

CSP configured in default.conf file for the `nginx` server

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
