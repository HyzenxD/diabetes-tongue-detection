# Diabetes Tongue Detection Using Deep Learning

A comprehensive machine learning project for detecting diabetes through tongue image analysis using state-of-the-art deep learning models.

## Table of Contents

- [Overview](#overview)
- [Research Background](#research-background)
- [Model Architectures](#model-architectures)
- [Dataset and Methodology](#dataset-and-methodology)
- [Installation](#installation)
- [Usage](#usage)
- [Results](#results)
- [Project Structure](#project-structure)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Overview

This project implements multiple deep learning architectures to detect diabetes through non-invasive tongue image analysis. The system compares five different convolutional neural network models to identify patterns in tongue characteristics that may indicate diabetes mellitus.

## Research Background

Traditional diabetes diagnosis relies on invasive blood tests and clinical examinations. This research explores the potential of computer vision techniques for non-invasive diabetes screening based on tongue appearance analysis, which has roots in traditional medicine practices.

The project addresses several key challenges:
- Development of robust feature extraction methods for medical images
- Comparison of different deep learning architectures for medical classification
- Creation of a reproducible pipeline for tongue image analysis
- Evaluation of model performance for potential clinical applications

## Model Architectures

The project implements and compares five different deep learning models:

### Custom CNN
A baseline convolutional neural network designed specifically for tongue image classification. The architecture includes multiple convolutional layers with batch normalization and dropout for regularization.

### ResNet50
A deep residual network with 50 layers that uses skip connections to enable training of very deep networks. Pre-trained on ImageNet and fine-tuned for tongue image classification.

### MobileNetV2
A lightweight architecture using depthwise separable convolutions, designed for mobile and edge deployment scenarios. Offers good performance with reduced computational requirements.

### MobileNetV3
An enhanced version of MobileNet that incorporates squeeze-and-excitation blocks and improved activation functions for better accuracy and efficiency.

### EfficientNet-B0
A compound scaling method that uniformly scales network depth, width, and resolution using a simple yet effective compound coefficient.

## Dataset and Methodology

The models are trained using standard computer vision preprocessing techniques including:
- Image normalization and standardization
- Data augmentation for improved generalization
- Cross-validation for robust performance evaluation
- Stratified sampling to handle class imbalance

Performance is evaluated using multiple metrics including accuracy, precision, recall, F1-score, and area under the ROC curve.

## Installation

### Requirements

- Python 3.8 or higher
- CUDA-compatible GPU (recommended for training)
- At least 8GB RAM
- 2GB free storage space

### Setup Instructions

1. Clone the repository:
```bash
git clone https://github.com/HyzenxD/diabetes-tongue-detection.git
cd diabetes-tongue-detection
```

2. Create a virtual environment:
```bash
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
```

3. Install dependencies:
```bash
pip install -r requirements.txt
```

### Quick Setup

For automated installation, run the provided setup script:

**Windows:**
```batch
setup.bat
```

**Linux/macOS:**
```bash
chmod +x setup.sh
./setup.sh
```

## Usage

### Training Models

Each model can be trained using its corresponding Jupyter notebook:

- `CustomCNN_BaseLine.ipynb` - Baseline CNN implementation
- `ResNet50.ipynb` - ResNet50 with transfer learning
- `MobileNetV2.ipynb` - Lightweight MobileNetV2
- `MobileNetV3.ipynb` - Enhanced MobileNetV3
- `EfficientNet_B0.ipynb` - EfficientNet with compound scaling

To start training:
```bash
jupyter notebook
```

### Model Deployment

The `deployment.ipynb` notebook provides tools for:
- Converting models to different formats (ONNX, TorchScript)
- Performance benchmarking
- Model optimization techniques

### Performance Analysis

Use `performance.ipynb` to:
- Compare model performance metrics
- Generate evaluation reports
- Visualize training progress and results

## Results

Detailed performance metrics are stored in CSV files within the data directory:
- `performance_metrics.csv` - Basic performance comparison
- `comprehensive_performance_metrics.csv` - Detailed evaluation results
- `deployment_metrics.csv` - Inference performance data

Model weights and exported formats are organized in the models directory with separate subdirectories for PyTorch, ONNX, and TorchScript formats.

## Project Structure

```
diabetes-tongue-detection/
├── notebooks/
│   ├── CustomCNN_BaseLine.ipynb
│   ├── ResNet50.ipynb
│   ├── MobileNetV2.ipynb
│   ├── MobileNetV3.ipynb
│   ├── EfficientNet_B0.ipynb
│   ├── deployment.ipynb
│   └── performance.ipynb
├── models/
│   ├── pytorch/
│   ├── onnx/
│   └── torchscript/
├── data/
│   ├── performance_metrics.csv
│   ├── comprehensive_performance_metrics.csv
│   └── deployment_metrics.csv
├── requirements.txt
├── setup.bat
├── setup.sh
├── LICENSE
└── README.md
```

## Contributing

Contributions are welcome and appreciated. To contribute:

1. Fork the repository
2. Create a feature branch: `git checkout -b feature-name`
3. Make your changes and commit them: `git commit -m 'Add feature'`
4. Push to the branch: `git push origin feature-name`
5. Submit a pull request

Please ensure your code follows the existing style conventions and includes appropriate documentation.

## License

This project is licensed under the MIT License. See the LICENSE file for details.

## Contact

**Tawhid Hasan**
- Email: tawhid.hasan002@gmail.com
- GitHub: HyzenxD

For questions, suggestions, or research collaborations, please feel free to open an issue or contact directly.

---

**Medical Disclaimer:** This project is for research and educational purposes only. It should not be used as a substitute for professional medical diagnosis or treatment. Always consult qualified healthcare professionals for medical advice.