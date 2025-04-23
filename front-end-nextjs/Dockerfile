FROM node:18-alpine AS builder

WORKDIR /app

ARG NEXT_PUBLIC_API_URL
ENV NEXT_PUBLIC_API_URL=$NEXT_PUBLIC_API_URL

COPY package.json package-lock.json ./
RUN npm install
COPY . .

RUN npm run build


FROM node:18-alpine

WORKDIR /app
COPY --from=builder /app ./
RUN npm install --production


EXPOSE 3000
CMD ["npm", "start"]
