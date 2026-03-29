FROM node:20-slim
WORKDIR /app

# Copy entire build
COPY .viabl/ ./

EXPOSE 7777
CMD ["node", "start.js"]