.venv\Scripts\activate

$env:ALLOWED_HOSTS = "*"
$env:DATABASE_URL = "sqlite:///:memory:"
$env:DEBUG = 0
$env:SECRET_KEY = "testing"

python app\manage.py collectstatic --noinput
python app\manage.py test app

Remove-Item env:ALLOWED_HOSTS
Remove-Item env:DATABASE_URL
Remove-Item env:DEBUG
Remove-Item env:SECRET_KEY
