FROM ubuntu:24.04
RUN apt-get update && apt-get install -y wget
WORKDIR /app

COPY models/*.llamafile /models/
COPY llm-server.sh /app/llm-server.sh
RUN chmod 755 /app/llm-server.sh
EXPOSE 8080
ENTRYPOINT ["/app/llm-server.sh"]
