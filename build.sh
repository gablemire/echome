#!/bin/bash

echo "[INFO] Building Docker image"
docker build -t echome:latest ./app
