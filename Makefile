start:
	uv run flask --app example --debug run --port 8000

start_1:
	uv run flask --app example1 --debug run --port 8000

start gunicorn:
	uv run gunicorn --workers=4 --bind=127.0.0.1:8000 example1:app

start_prod:
    uv run gunicorn -w 5 -b 0.0.0.0:8000 example1:app