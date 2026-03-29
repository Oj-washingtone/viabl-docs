FROM node:20-alpine
WORKDIR /app

# Copy entire build
COPY .viabl/ ./

EXPOSE 7777
CMD ["node", "start.js"]