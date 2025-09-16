@echo off
REM Diabetes Tongue Detection Setup Script for Windows

echo 🚀 Setting up Diabetes Tongue Detection Project...

REM Check if Python is installed
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Python is not installed. Please install Python 3.8 or higher.
    pause
    exit /b 1
)

REM Display Python version
echo ✅ Python version:
python --version

REM Create virtual environment
echo 📦 Creating virtual environment...
python -m venv venv

REM Activate virtual environment
echo 🔄 Activating virtual environment...
call venv\Scripts\activate.bat

REM Upgrade pip
echo ⬆️ Upgrading pip...
python -m pip install --upgrade pip

REM Install requirements
echo 📥 Installing dependencies...
pip install -r requirements.txt

REM Create necessary directories if they don't exist
echo 📁 Creating project directories...
if not exist "data\raw" mkdir "data\raw"
if not exist "data\processed" mkdir "data\processed"
if not exist "models\pytorch" mkdir "models\pytorch"
if not exist "models\onnx" mkdir "models\onnx"
if not exist "models\torchscript" mkdir "models\torchscript"
if not exist "logs" mkdir "logs"
if not exist "outputs" mkdir "outputs"

echo ✅ Setup completed successfully!
echo.
echo To get started:
echo 1. Activate the virtual environment:
echo    venv\Scripts\activate
echo 2. Start Jupyter Notebook:
echo    jupyter notebook
echo 3. Open any notebook from the 'notebooks/' directory
echo.
echo 📚 Available notebooks:
echo    - CustomCNN_BaseLine.ipynb
echo    - ResNet50.ipynb
echo    - MobileNetV2.ipynb
echo    - MobileNetV3.ipynb
echo    - EfficientNet_B0.ipynb
echo    - deployment.ipynb
echo    - performance.ipynb

pause