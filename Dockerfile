# Accept Node version as argument
ARG NODE_VERSION=20

# Stage 1: Build
FROM node:${NODE_VERSION}-alpine AS builder

WORKDIR /app

COPY package*.json ./
RUN npm ci

COPY . .

# Stage 2: Runtime
FROM node:${NODE_VERSION}-alpine

WORKDIR /app

COPY --from=builder /app /app

EXPOSE 3000
ENV NODE_ENV=production

CMD ["node", "app.js"]
