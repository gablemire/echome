#!/bin/bash

PORT=${PORT:-30007}

echo "[INFO] Calling API on port $PORT"
curl -s -X GET http://localhost:$PORT/ | jq
