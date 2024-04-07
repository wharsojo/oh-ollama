# oh-ollama
oh ollama is good!

## Dockerfile
* open Ubuntu WSL
```bash
git clone https://github.com/wharsojo/oh-ollama.git
cd oh-ollama
docker build -t code-server .

mkdir ~/conda-envs

docker pull chromadb/chroma
docker run -p 8000:8000 chromadb/chroma
```
```bash
docker run -dit --init \
  --name=code-server \
  --restart unless-stopped \
  -e TZ=Asia/Singapore \
  -e PUID=1000 \
  -e PGID=1000 \
  -p 8843:3000 \
  -v "$HOME/.ssh:/home/workspace/.ssh:cached" \
  -v "$HOME/Projects:/home/workspace/Projects:cached" \
  -v "$HOME/conda-envs:/home/workspace/miniconda3/envs:cached" \
  -v "$HOME/vectordb-stores:/home/workspace/vectordb-stores:cached" \
  code-server /usr/bin/zsh
```
* Go: http://localhost:8843/?folder=/home/workspace
* Open integrated terminal
* open new terminal
```bash
conda create --name widi --clone base && conda activate widi

cd ~/Projects/videoprojects/2024-04-04-build-rag-with-python
pip install -r requirements.txt
```