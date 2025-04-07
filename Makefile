.PHONY: help install lint test format check build release precommit

PROJECT_NAME = django_admin_2fa_plus
PYTHON = python3

help:
	@echo "Useful commands:"
	@echo "  make install       Install dependencies"
	@echo "  make lint          Run all lint checks (black, isort, flake8, mypy)"
	@echo "  make format        Auto-format code with black and isort"
	@echo "  make test          Run all tests"
	@echo "  make precommit     Run pre-commit hooks"
	@echo "  make build         Build package"
	@echo "  make release       Upload to PyPI (requires API token)"
	@echo "  make check         Run test + lint"

install:
	$(PYTHON) -m pip install -U pip
	$(PYTHON) -m pip install -r requirements.txt
	$(PYTHON) -m pip install -e .[dev]

lint:
	pre-commit run --all-files

format:
	black $(PROJECT_NAME) tests
	isort $(PROJECT_NAME) tests

test:
	pytest

check: test lint

build:
	rm -rf dist/
	$(PYTHON) setup.py sdist bdist_wheel

release: build
	twine upload dist/*

precommit:
	pre-commit install
