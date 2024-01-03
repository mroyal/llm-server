FROM ubuntu:latest
RUN apt-get update && apt-get install -y wget
WORKDIR /app
COPY llm-server.sh /app
RUN chmod 755 /app/llm-server.sh
EXPOSE 8080
ENTRYPOINT ["./llm-server.sh"]
