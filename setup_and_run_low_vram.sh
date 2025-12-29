#!/bin/bash

echo "======================================"
echo "DiffBIR Setup and Run Script"
echo "LOW VRAM MODE"
echo "======================================"

# 1. 시스템 라이브러리 설치 (OpenCV 의존성 해결)
echo ""
echo "[1/3] Installing system libraries for OpenCV..."
apt-get update && apt-get install -y libgl1-mesa-glx libglib2.0-0

# 2. Python 패키지 설치
echo ""
echo "[2/3] Installing Python dependencies..."
pip install -r requirements.txt

# 3. DiffBIR 실행 (메모리 절약 모드)
echo ""
echo "[3/3] Running DiffBIR inference (LOW VRAM MODE)..."
python inference.py \
  --task sr \
  --upscale 4 \
  --version v2.1 \
  --captioner none \
  --cfg_scale 4 \
  --input inputs/test \
  --output outputs \
  --precision fp16 \
  --cleaner_tiled \
  --cleaner_tile_size 256 \
  --cleaner_tile_stride 128 \
  --vae_encoder_tiled \
  --vae_encoder_tile_size 224 \
  --vae_decoder_tiled \
  --vae_decoder_tile_size 224 \
  --cldm_tiled \
  --cldm_tile_size 384 \
  --cldm_tile_stride 256

echo ""
echo "======================================"
echo "Done! Results saved to outputs/"
echo "======================================"
