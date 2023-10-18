# Runs flake8 test on all files
lint:
	docker-compose run --rm app sh -c "flake8"

# Runs the unit test inside of the directory
test:
	docker-compose run --rm app sh -c "python manage.py test"

# Creates a project named 'app' in our parent directory noted by the dot character
# app will be placed in our existing app project /app/app
startproject:
	docker-compose run --rm app sh -c "django-admin startproject app ."

# Creates a new project named 'core' in our directory
startapp:
	docker-compose run --rm app sh -c "python manage.py startapp core"

# Start services
up:
	docker-compose up

# To clear any containers
down:
	docker-compose down

# Build our docker image
build:
	docker-compose build

.PHONY: lint test startproject up build down startapp
