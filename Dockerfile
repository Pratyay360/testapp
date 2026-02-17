# Base stage for shared dependencies
FROM oven/bun:1 AS base
WORKDIR /app
COPY package.json bun.lock ./
RUN bun install --frozen-lockfile
# Build stage
FROM base AS build
COPY . .
RUN bun run build
