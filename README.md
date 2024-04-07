# oh-ollama
oh ollama is good!

## Dockerfile
```bash
docker run -dit --init \
  --name=code-server \
  --restart unless-stopped \
  -e TZ=Asia/Singapore \
  -e PUID=1000 \
  -e PGID=1000 \
  -p 8843:3000 \
  -v "$HOME/Projects:/home/workspace/Projects:cached" \
  -v "$HOME/.ssh:/home/workspace/.ssh:cached" \
  code-server /usr/bin/zsh
  ```