#!/bin/bash
echo "Logging into GitHub Container Registry..."
echo "---"
echo "GITHUB_CR_PAT: $GITHUB_CR_PAT"

echo "$GITHUB_CR_PAT" | docker login ghcr.io -u USERNAME --password-stdin
