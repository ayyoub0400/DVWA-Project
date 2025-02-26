# Stage 1: Build stage
FROM node:18-alpine AS builder

# Set working directory
WORKDIR /app

# Copy package files for efficient caching
COPY package*.json ./

# Install dependencies
RUN npm ci --only=production

# Copy application code
COPY . .

# Stage 2: Production stage  
FROM node:18-alpine

# Install tini for proper signal handling
RUN apk add --no-cache tini

# Create non-root user
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

# Set working directory
WORKDIR /app

# Copy built artifacts from builder stage
COPY --from=builder --chown=appuser:appgroup /app ./

# Use tini as entrypoint to handle signals properly
ENTRYPOINT ["/sbin/tini", "--"]

# Switch to non-root user
USER appuser

# Expose port
EXPOSE 3000

# Start application
CMD ["node", "index.js"]