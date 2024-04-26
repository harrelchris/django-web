.venv\Scripts\activate

black app --line-length 120 --exclude migrations/ --exclude fixtures/

flake8 app --max-line-length 120 --extend-exclude .idea/,.venv/,migrations/

isort app --profile black
