check:
	python -m pytest -s --cov

lint:
	ruff check .
	ruff format --check .
	mypy -p multimethod
	mypy tests/static.py | grep -qv Any

html:
	PYTHONPATH=$(PWD) python -m mkdocs build
