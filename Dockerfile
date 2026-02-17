# Base stage for shared dependencies
FROM docker.io/oven/bun:canary
COPY package.json .
RUN bun install
COPY . .
CMD [ "bun", "run", "build" ]
