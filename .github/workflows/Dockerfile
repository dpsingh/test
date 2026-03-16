name: Build Docker Image

on:
  push:
    branches:
      - main

jobs:
  build-image:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout Repository
        uses: actions/checkout@v4

      - name: Set Image Tag
        run: echo "IMAGE_TAG=${{ github.sha }}" >> $GITHUB_ENV

      - name: Build Docker Image
        run: |
          docker build -t myapp:${IMAGE_TAG} .

      - name: Verify Image
        run: docker images