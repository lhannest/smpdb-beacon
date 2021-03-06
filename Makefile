install:
	pip install .
	pip install beacon/

venv:
	virtualenv -p python3.6 venv

dev-install:
	pip install -e .
	pip install beacon/

run:
	cd beacon && python -m swagger_server

docker-build:
	docker build -t ncats:smpdb-beacon .

docker-run:
	docker run -d --rm -v `pwd`/data:/usr/src/app/data/ --name smpdb-beacon -p 8085:8080 ncats:smpdb-beacon

docker-stop:
	docker stop smpdb-beacon

docker-logs:
	docker logs smpdb-beacon
