#!/bin/bash

echo "=============================="
echo "Testing LiteLLM models"
echo "=============================="

curl http://localhost:4000/v1/models \
-H "Authorization: Bearer super-secret-key"

echo ""
echo "=============================="
echo "Testing General Model"
echo "=============================="

curl http://localhost:4000/v1/chat/completions \
-H "Content-Type: application/json" \
-H "Authorization: Bearer super-secret-key" \
-d '{
"model":"general",
"messages":[
{
"role":"user",
"content":"Explain transformers in AI"
}
]
}'
