
```bash
docker run -it \
--name local-ai \
-p 8080:8080 \
-v $HOME/localai:/build/models \
localai/localai:latest-aio-cpu mistral-openorca
```