#!/bin/bash

# Mistral
URL="https://huggingface.co/jartine/mistral-7b.llamafile/resolve/main/mistral-7b-instruct-v0.1-Q4_K_M-server.llamafile"
FILENAME="mistral-7b-instruct-v0.1-Q4_K_M-server.llamafile"

echo Downloading file
mkdir -p /models
if [ ! -f "/models/$FILENAME" ]; then
    wget -O "/models/$FILENAME" $URL
fi

chmod 755 "/models/$FILENAME"

cd /models
sh -c "/models/$FILENAME --host 0.0.0.0"
