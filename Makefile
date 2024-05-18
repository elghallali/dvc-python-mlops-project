install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv --cov=src tests/test_*.py

format:
	black *.py src/*.py tests/test_*.py

lint:
	pylint --disable=R,C *.py src/*/*.py tests/test_*.py
