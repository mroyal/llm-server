# Basic LLM Server

This repository simply downloads the Mistral 7B model and runs it as a local server.

## Prerequisites

- Docker

Make sure you have `docker` and `docker-compose` on your machine. The model is wrapped in a llamafile distributable.

## Setup

1. **Clone the repository**

    ```
    git clone git@github.com:mroyal/llm-server.git llm-server
    cd llm-server
    ```

2. **Start the service**

    ```
    docker-compose up --build
    ```

3. **Profit**

   Navigate to http://127.0.0.1:8080/ and have fun!
