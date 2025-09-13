# ARGS
ARG NODE_VERSION=24.8.0
ARG N8N_VERSION=latest

# -----------------------------------------
# ベースイメージは、Node.jsの公式イメージを使用（Alpine版）
# https://hub.docker.com/_/node
# -----------------------------------------
FROM node:${NODE_VERSION}-alpine AS node

# -----------------------------------------
# ベースイメージは、n8nの公式イメージを使用
# https://hub.docker.com/r/n8nio/n8n
# -----------------------------------------
FROM n8nio/n8n:${N8N_VERSION}

# Switch to root user temporarily for installations
USER root

# Node.js Merge
COPY --from=node /usr/local/bin /usr/local/bin
COPY --from=node /usr/local/lib/node_modules/npm /usr/local/lib/node_modules/npm

# ClaudeCode Install
RUN npm install -g @anthropic-ai/claude-code

# Switch back to node user
USER node