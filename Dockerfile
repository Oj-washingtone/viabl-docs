FROM node:20-alpine

WORKDIR /app


COPY .viabl/content-server/ ./content-server/
COPY .viabl/renderer/ ./renderer/
COPY .viabl/docs/ ./docs/

COPY .viabl/start.js .

EXPOSE 7777

CMD ["node", "start.js"]