# Base stage for shared dependencies
FROM docker.io/oven/bun:1 AS base
WORKDIR /app

# Install dependencies
COPY package.json bun.lock ./
RUN bun install --frozen-lockfile

# Copy source code
COPY . .

# Expose the Vite dev server port
EXPOSE 5173

# Run the development server
CMD ["bun", "run", "dev"]
