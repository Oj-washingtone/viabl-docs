FROM node:20-slim

WORKDIR /app

# Copy the build output
COPY .viabl/ .

EXPOSE 7777

CMD ["node", "start.js"]