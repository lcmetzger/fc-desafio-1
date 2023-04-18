all: build push

build:
	docker build -t lcmetzger/fullcycle:latest .

push:
	docker push lcmetzger/fullcycle:latest
