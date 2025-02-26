# Stage 1: Build stage
FROM node:18-alpine AS builder

# Set working directory
WORKDIR /app

# Copy package files for efficient caching
COPY package*.json ./

# Install dependencies
RUN npm ci

# Copy application code
COPY . .

# Stage 2: Production stage  
FROM node:18-alpine


# Create non-root user
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

# Set working directory
WORKDIR /app

# Copy built artifacts from builder stage
COPY --from=builder --chown=appuser:appgroup /app ./

# Switch to non-root user
USER appuser

# Expose port
EXPOSE 3000

# Start application
CMD ["node", "index.js"]