#!/bin/bash

echo "======================================"
echo "DiffBIR Setup and Run Script"
echo "======================================"

# 1. 시스템 라이브러리 설치 (OpenCV 의존성 해결)
echo ""
echo "[1/3] Installing system libraries for OpenCV..."
apt-get update && apt-get install -y libgl1-mesa-glx libglib2.0-0

# 2. Python 패키지 설치
echo ""
echo "[2/3] Installing Python dependencies..."
pip install -r requirements.txt

# 3. DiffBIR 실행 (최대 성능 모드)
echo ""
echo "[3/3] Running DiffBIR inference (MAX PERFORMANCE MODE)..."
python inference.py \
  --task sr \
  --upscale 4 \
  --version v2.1 \
  --captioner none \
  --cfg_scale 8 \
  --noise_aug 0 \
  --input inputs/test \
  --output outputs \
  --device cuda \
  --precision fp32

echo ""
echo "======================================"
echo "Done! Results saved to outputs/"
echo "======================================"
