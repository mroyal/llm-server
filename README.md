# Basic LLM Server

This repository simply downloads the Mistral 7B model and runs it as a local server.

## Prerequisites

- Docker

Make sure you have `docker` and `docker-compose` on your machine. The model is wrapped in a llamafile distributable.

## Setup

1. **Clone the repository**

    ```shell
    git clone git@github.com:mroyal/llm-server.git llm-server
    cd llm-server
    ```

2. **Download the model**

    Optionally, download the Mistral 7B model and put it in the `models` directory inside the repository. If you download it, it will be saved to your Docker image. Otherwise, each container will attempt the download as your service boots.

    ```shell
    wget https://huggingface.co/jartine/mistral-7b.llamafile/resolve/main/mistral-7b-instruct-v0.1-Q4_K_M-server.llamafile -O models/mistral-7b-instruct-v0.1-Q4_K_M-server.llamafile
    ```

3. **Start the service**

    Docker:
    ```shell
    docker-compose up --build
    ```
   
    Kubernetes:
    ```shell
    kubectl apply -f k8s
    ```

4. **Profit**

   Navigate to http://127.0.0.1:8080/ (Docker) or http://127.0.0.1:PORT (retrieve PORT from `kubectl get services`) and have fun!
