FROM node:20-alpine

WORKDIR /app

# Copy content server deps first (changes less often)
COPY .viabl/content-server/ ./content-server/

# Then renderer (changes on basePath change only)
COPY .viabl/renderer/ ./renderer/

# Then docs (changes most often — last layer)
COPY .viabl/docs/ ./docs/

COPY .viabl/start.js .

EXPOSE 7777

CMD ["node", "start.js"]