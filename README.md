# oh-ollama
oh ollama is good!

## Dockerfile
```bash
docker build -t code-server .
```
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
* Go: http://localhost:8843/?folder=/home/workspace
* Open integrated terminal
* run
```bash
conda create --name widi --clone base
conda activate widi

cd ~/Projects/videoprojects/2024-04-04-build-rag-with-python
pip install -r requirements.txt
```