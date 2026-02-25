"""Setup script for AI-Based SI-Compliant PCB Design package."""

from setuptools import setup, find_packages
from pathlib import Path

# Read README for long description
readme_file = Path(__file__).parent / "README.md"
long_description = readme_file.read_text(encoding="utf-8") if readme_file.exists() else ""

# Read requirements
requirements_file = Path(__file__).parent / "requirements.txt"
requirements = []
if requirements_file.exists():
    with open(requirements_file, encoding="utf-8") as f:
        requirements = [
            line.strip()
            for line in f
            if line.strip() and not line.startswith("#")
        ]

setup(
    name="ai-si-pcb-design",
    version="1.0.0",
    author="Thiyanayugi Mariraj",
    author_email="yugimariraj01@gmail.com",
    description="Machine learning approach to predicting Signal Integrity parameters in PCB design",
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://github.com/thiyanayugi/AI-Based-SI-Compliant-PCB-Design",
    packages=find_packages(exclude=["tests", "docs", "notebooks"]),
    classifiers=[
        "Development Status :: 4 - Beta",
        "Intended Audience :: Developers",
        "Intended Audience :: Science/Research",
        "Topic :: Scientific/Engineering :: Artificial Intelligence",
        "Topic :: Scientific/Engineering :: Electronic Design Automation (EDA)",
        "License :: OSI Approved :: MIT License",
        "Programming Language :: Python :: 3",
        "Programming Language :: Python :: 3.7",
        "Programming Language :: Python :: 3.8",
        "Programming Language :: Python :: 3.9",
        "Programming Language :: Python :: 3.10",
        "Programming Language :: Python :: 3.11",
    ],
    python_requires=">=3.7",
    install_requires=requirements,
    extras_require={
        "dev": [
            "pytest>=7.0.0",
            "black>=23.0.0",
            "flake8>=6.0.0",
            "mypy>=1.0.0",
            "pre-commit>=3.0.0",
        ],
    },
    keywords="machine-learning deep-learning signal-integrity pcb-design neural-networks tensorflow",
    project_urls={
        "Bug Reports": "https://github.com/thiyanayugi/AI-Based-SI-Compliant-PCB-Design/issues",
        "Source": "https://github.com/thiyanayugi/AI-Based-SI-Compliant-PCB-Design",
    },
)
