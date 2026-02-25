# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2026-01-09

### Added
- Initial release of AI-Based SI-Compliant PCB Design
- Neural network models for predicting Signal Integrity parameters
- 5 Jupyter notebooks with comprehensive analysis
- Support for multiple IC configurations
- Visualization of predictions vs actual values
- Model training and evaluation metrics
- Documentation and project structure

### Features
- 5-layer feedforward neural network architecture
- Prediction of 5 critical SI parameters
- High accuracy (R² > 0.98, MAE < 0.08)
- Fast training (2-5 minutes on standard hardware)

## [1.1.0] - 2026-02-25

### Added
- Docker support with Dockerfile and docker-compose.yml for reproducible environments
- Setup.py for pip package installation
- Makefile with common development tasks (install, jupyter, docker commands, clean)
- EditorConfig file for consistent code formatting across editors
- Pre-commit hooks configuration for automated code quality checks
- Seaborn, tqdm, and joblib to dependencies for enhanced functionality
- Additional badges to README (code style, maintenance status)

### Changed
- Improved requirements.txt with version ranges for better dependency management
- Updated README with comprehensive installation options (standard Python and Docker)
- Added Makefile usage instructions to README
- Enhanced documentation for easier project setup and usage

### Development
- Added development dependencies (pytest, black, flake8, mypy, pre-commit)
- Improved project structure with better tooling support

## [Unreleased]

### Planned
- Additional IC configurations
- Model optimization techniques
- Web interface for predictions
- Extended documentation with tutorials
- Unit tests and integration tests
- CI/CD pipeline with GitHub Actions
