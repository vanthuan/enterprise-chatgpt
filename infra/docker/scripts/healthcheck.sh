#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

check_service () {

    NAME=$1
    URL=$2

    if curl -s $URL > /dev/null
    then
        echo -e "${GREEN}PASS${NC} $NAME"
    else
        echo -e "${RED}FAIL${NC} $NAME"
    fi
}

echo "====================================="
echo "Health Check"
echo "====================================="

check_service "Open WebUI" "http://localhost:3000"

check_service "LiteLLM" "http://localhost:4000/health"

check_service "FastAPI" "http://localhost:8080/health"

check_service "Prometheus" "http://localhost:9090"

check_service "Grafana" "http://localhost:3001"

check_service "Langfuse" "http://localhost:3010"

check_service "Qwen vLLM" "http://localhost:8000/v1/models"

check_service "DeepSeek vLLM" "http://localhost:8001/v1/models"
