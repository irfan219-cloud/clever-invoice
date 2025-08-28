#!/bin/bash

# Docker run script for React application

echo "🚀 Docker Runner for React App"
echo "================================"
echo "1. Development (with hot reload)"
echo "2. Development (standard)"
echo "3. Production"
echo "4. Build only"
echo "5. Stop all containers"
echo "================================"

read -p "Choose an option (1-5): " choice

case $choice in
    1)
        echo "Starting development with hot reload..."
        docker-compose --profile dev-hot up --build
        ;;
    2)
        echo "Starting development..."
        docker-compose --profile dev up --build
        ;;
    3)
        echo "Starting production..."
        docker-compose --profile prod up --build
        ;;
    4)
        echo "Building production image..."
        docker build -t react-app-prod .
        echo "✅ Build complete! Run with: docker run -p 80:80 react-app-prod"
        ;;
    5)
        echo "Stopping all containers..."
        docker-compose down
        ;;
    *)
        echo "Invalid option. Please choose 1-5."
        ;;
esac 