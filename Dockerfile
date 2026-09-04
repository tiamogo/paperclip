FROM node:24-alpine
RUN npm install -g pnpm
ENV PNPM_SKIP_INTEGRITY_CHECK=true
WORKDIR /app
COPY . .
RUN pnpm install --no-frozen-lockfile
RUN pnpm run build
EXPOSE 3000
CMD ["pnpm", "run", "start"]
