FROM node:22-slim AS builder

# Install git because Quartz community plugins may be sourced from Git.
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app
COPY package.json .
COPY package-lock.json .
COPY .npmrc .
COPY quartz.config.yaml .
COPY quartz/ ./quartz/
RUN npm ci && npx quartz plugin install

FROM node:22-slim
WORKDIR /usr/src/app
COPY --from=builder /usr/src/app/ /usr/src/app/
COPY . .
CMD ["npx", "quartz", "build", "-d", "content", "--serve"]
