FROM node:20-slim
WORKDIR /app

# Copy Viabl source / package files
COPY .viabl/renderer/package*.json renderer/
COPY .viabl/content-server/package*.json content-server/
COPY .viabl/start.js ./

# Install dependencies
RUN cd renderer && npm install --production
RUN cd content-server && npm install --production

# Build docs inside container
RUN npm install -g @viablkit/cli
RUN viabl build

EXPOSE 7777
CMD ["node", "start.js"]