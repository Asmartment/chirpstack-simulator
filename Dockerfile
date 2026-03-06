# Create a minimal runtime image
FROM golang:1.13-alpine

# Install necessary dependencies
RUN apk add --no-cache \
    ca-certificates

# Copy the compiled binary from the builder image
COPY ./build/chirpstack-simulator /usr/local/bin/chirpstack-simulator

# Set the entrypoint
ENTRYPOINT ["/usr/local/bin/chirpstack-simulator"]