# pterodactyl-OLLAMA
Dockerfile and Egg to run Ollama inside a Pterodactyl server.

This repository provides what is needed to run Nginx as part of a Pterodactyl server, useful for hosting web applications or acting as a reverse proxy for services managed by the panel.

## Repository contents

- `Dockerfile` — Image with Ollama, and required scripts.
- `entrypoint.sh` — Startup script.
- `egg-ollama.json` — Egg to use in Pterodactyl.
- `logrotate.d` — Log rotation configuration for Nginx.

## Recommended to be used together with

- [Pterodactyl Cloudflared.](https://github.com/Sinaloense/pterodactyl-cloudflared)