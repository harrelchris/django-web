.venv\Scripts\activate

black --line-length 120 --extend-exclude migrations/ app

flake8 --max-line-length 120 --extend-exclude app/*/migrations/ app

isort --profile black app
