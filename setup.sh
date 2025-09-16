#!/bin/bash

# Diabetes Tongue Detection Setup Script

echo "🚀 Setting up Diabetes Tongue Detection Project..."

# Check if Python is installed
if ! command -v python &> /dev/null; then
    echo "❌ Python is not installed. Please install Python 3.8 or higher."
    exit 1
fi

# Check Python version
python_version=$(python --version 2>&1 | cut -d' ' -f2)
echo "✅ Python version: $python_version"

# Create virtual environment
echo "📦 Creating virtual environment..."
python -m venv venv

# Activate virtual environment
echo "🔄 Activating virtual environment..."
if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
    source venv/Scripts/activate
else
    source venv/bin/activate
fi

# Upgrade pip
echo "⬆️ Upgrading pip..."
python -m pip install --upgrade pip

# Install requirements
echo "📥 Installing dependencies..."
pip install -r requirements.txt

# Create necessary directories if they don't exist
echo "📁 Creating project directories..."
mkdir -p data/raw
mkdir -p data/processed
mkdir -p models/pytorch
mkdir -p models/onnx
mkdir -p models/torchscript
mkdir -p logs
mkdir -p outputs

echo "✅ Setup completed successfully!"
echo ""
echo "To get started:"
echo "1. Activate the virtual environment:"
if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
    echo "   source venv/Scripts/activate"
else
    echo "   source venv/bin/activate"
fi
echo "2. Start Jupyter Notebook:"
echo "   jupyter notebook"
echo "3. Open any notebook from the 'notebooks/' directory"
echo ""
echo "📚 Available notebooks:"
echo "   - CustomCNN_BaseLine.ipynb"
echo "   - ResNet50.ipynb"
echo "   - MobileNetV2.ipynb"
echo "   - MobileNetV3.ipynb"
echo "   - EfficientNet_B0.ipynb"
echo "   - deployment.ipynb"
echo "   - performance.ipynb"