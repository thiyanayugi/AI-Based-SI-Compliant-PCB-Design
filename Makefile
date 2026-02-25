.PHONY: help install install-dev jupyter docker-build docker-up docker-down clean test lint format

help:  ## Show this help message
	@echo 'Usage: make [target]'
	@echo ''
	@echo 'Available targets:'
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-20s\033[0m %s\n", $$1, $$2}'

install:  ## Install dependencies
	pip install -r requirements.txt

install-dev:  ## Install dependencies with dev tools
	pip install -r requirements.txt
	pip install -e .[dev]

jupyter:  ## Start Jupyter notebook
	jupyter notebook --notebook-dir=notebooks

docker-build:  ## Build Docker image
	docker-compose build

docker-up:  ## Start Docker container
	docker-compose up -d
	@echo "Jupyter is running at http://localhost:8888"

docker-down:  ## Stop Docker container
	docker-compose down

clean:  ## Clean temporary files
	find . -type f -name '*.pyc' -delete
	find . -type d -name '__pycache__' -delete
	find . -type d -name '.ipynb_checkpoints' -exec rm -rf {} +
	find . -type f -name '.DS_Store' -delete

test:  ## Run tests (if available)
	@echo "No tests configured yet"

lint:  ## Run linting
	@echo "Running flake8..."
	flake8 . --count --select=E9,F63,F7,F82 --show-source --statistics

format:  ## Format code with black
	black . --exclude '/(\.git|\.venv|venv|env|build|dist)/'
