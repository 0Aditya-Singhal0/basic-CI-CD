# Drug Classifier with CI/CD MLOps using GitHub Actions

Welcome to the **Drug Classifier** repository! This project demonstrates the implementation of continuous integration and continuous deployment (CI/CD) for machine learning operations (MLOps) using GitHub Actions. The project includes a Huggingface space app for classifying drugs, which can be accessed [here](https://huggingface.co/spaces/aditya-x-singhal/Drug-Classifier). This was made possible by using this [link](https://www.datacamp.com/tutorial/ci-cd-for-machine-learning)

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
- [GitHub Actions CI/CD](#github-actions-cicd)
- [Contributing](#contributing)
- [License](#license)
- [Acknowledgments](#acknowledgments)

## Introduction

This repository showcases a machine learning model for classifying drugs, leveraging CI/CD pipelines to ensure seamless integration and deployment. The main goal is to provide a comprehensive example of how to use GitHub Actions to automate MLOps workflows, including testing, building, and deploying the model.

## Features

- **Drug Classification Model**: A pre-trained model that classifies drugs based on input features.
- **CI/CD Pipeline**: Automated workflows using GitHub Actions for testing, building, and deploying the model.
- **Huggingface Space App**: An interactive application for drug classification.

## Getting Started

### Prerequisites

Before you begin, ensure you have met the following requirements:

- Python 3.8 or later
- GitHub account
- Huggingface account

### Installation

1. Clone the repository:

    ```sh
    git clone https://github.com/your-username/drug-classifier.git
    cd drug-classifier
    ```

2. Install the required dependencies:

    ```sh
    pip install -r requirements.txt
    ```

## Usage

To use the drug classifier model, follow these steps:

1. Train the model (if needed):

    ```sh
    python train.py
    ```

2. Run the model locally:

    ```sh
    python App/drug_app.py
    ```

3. Visit the Huggingface space app for an interactive demo: [Drug Classifier App](https://huggingface.co/spaces/aditya-x-singhal/Drug-Classifier)

## GitHub Actions CI/CD

This repository includes a GitHub Actions workflow for CI/CD. The workflow is defined in the `.github/workflows/` directory and includes the following steps:

1. **Integration**: Run format, train, and eval of the ML cycle.
2. **Deploying**: Deploy the model to the Huggingface space app.

The workflow is triggered on every push and pull request to the `main` branch.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.