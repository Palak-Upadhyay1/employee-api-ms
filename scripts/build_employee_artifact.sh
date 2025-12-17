#!/bin/bash
set -e

echo "==============================="
echo " Building employee-api artifact"
echo "==============================="

# Go to project root (adjust if needed)
PROJECT_DIR=$(pwd)

echo "Project directory: $PROJECT_DIR"

# Download dependencies
go mod download

# Build the Go binary exactly like Dockerfile
echo "Building binary..."
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 GO111MODULE=on \
    go build -a -o employee-api main.go

echo "==============================="
echo " Artifact built: employee-api"
echo "==============================="
