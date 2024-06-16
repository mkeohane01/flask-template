install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv --cov=app/

format:	
	black *.py 

lint:
	pylint --disable=R,C
		
all: install lint format test

activate:
	source /home/vscode/venv/bin/activate