FROM node:20-alpine

WORKDIR /app

# Copy the build output
COPY .viabl/ .

EXPOSE 7777

CMD ["node", "start.js"]