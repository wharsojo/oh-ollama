How to run:
```bash
docker run -it \
--name local-ai \
-p 8080:8080 \
-v $HOME/localai:/build/models \
localai/localai:latest-aio-cpu mistral-openorca
```
chat example:
```bash
curl http://localhost:8080/v1/chat/completions -H "Content-Type: application/json" \
-d '{"messages": [{"role": "user", "content": "How are you doing?", "temperature": 0.1}],  "model": "mistral-openorca"}'
```
