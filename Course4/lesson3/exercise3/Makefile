
setup:
	python3 -m venv ~/.exercise2

env:
	#Show information about environment
	which python3
	python3 --version
	which pytest
	which pylint

lint:
	pylint --load-plugins pylint_flask --disable=R,C flask_app/*.py nlib

lint-circleci:                                                              
	pylint --output-format=parseable --load-plugins pylint_flask --disable=R,C flask_app/*.py nlib > $$CIRCLE_ARTIFACTS/pylint.html  


install:
	pip install -r requirements.txt 


start-api:
	cd flask_app && PYTHONPATH=".." python web.py


all: install lint start-api
