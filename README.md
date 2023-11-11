# Fastify Docker Simple
This is an example of how to dockerize fastify application in very simple way.

## Dependencies
- Fastify
- pm2

pm2 is used for production process manager, so that fastify app can restart automatically when there is something any unhandled exception or errors occur.

## Build Image
```bash
docker build . -t fastify-try
```

## Run Container
```bash
docker run -p 3000:3000 fastify-try
```
