# Port Configuration Guide

## Port Conflict Resolution

This document explains how port conflicts were resolved in this project.

### Issue

The original Docker configuration was set to use port 8080, but this port was already in use by another process (a Node.js application), causing the following error when attempting to start Docker containers:

```
(HTTP code 500) server error - ports are not available: exposing port TCP 0.0.0.0:8080 -> 127.0.0.1:0: listen tcp 0.0.0.0:8080: bind: Only one usage of each socket address (protocol/network address/port) is normally permitted.
```

### Solution

The following changes were made to resolve the port conflict:

1. **Docker Compose Configuration**: Updated `docker-compose.yml` to map host port 8083 to container port 8080:
   ```yaml
   ports:
     - "8083:8080"
   ```

2. **Dockerfile Environment**: Added environment variable in `Dockerfile.dev` to ensure Vite uses the correct port inside the container:
   ```dockerfile
   ENV VITE_PORT=8080
   ```

3. **Documentation**: Updated README.md to reflect the new port configuration:
   - npm run dev: http://localhost:8082
   - Docker development: http://localhost:8083
   - Docker production: http://localhost:80

### Current Port Usage

| Service | Port | Access URL |
|---------|------|------------|
| Development Server (npm) | 8082 | http://localhost:8082 |
| Docker Development | 8083 | http://localhost:8083 |
| Docker Production | 80 | http://localhost:80 |

### Checking for Port Conflicts

If you encounter port conflicts, you can check which process is using a specific port:

**Windows:**
```powershell
netstat -ano | findstr :<PORT>
tasklist | findstr <PID>
```

**Linux/Mac:**
```bash
sudo lsof -i :<PORT>
```

### Changing Ports

If you need to use different ports:

1. Update the port mapping in `docker-compose.yml`
2. Update the documentation in README.md
3. If necessary, update any environment variables in Dockerfile.dev