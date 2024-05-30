# Template repository for creating a new Django project in Docker
GitHub template repository for creating a new Django project in Docker

## :star: Features
- [`Python`](https://www.python.org/) 3.12
- [`Django`](https://www.djangoproject.com/) 5
- [`django-debug-toolbar`](https://github.com/jazzband/django-debug-toolbar) 4.3
- [`Docker`](https://docs.docker.com/get-docker/) and [`Docker Compose`](https://docs.docker.com/compose/)
- Base HTML template with [`Bootstrap`](https://getbootstrap.com/) 5

## :magic_wand: First Commands
If you have Docker and Docker compose installed
```
docker-compose up --build -d
```

Build your project
```
docker-compose exec web django-admin startproject <project-name> .
```
```
docker-compose exec web python manage.py startapp <app-name>
```

Then load the site at
```
http://127.0.0.1:8000
```

If you want to create a superuser
```
docker-compose exec web python manage.py createsuperuser
```

## Next Steps
### 1) Set environment variables
You can use an example file by renaming it, then adding your secret key and other desired variables
```
mv .env-example .env
```

### 2) Use predefined settings
You can replace settings with a predefined settings
```
mv predefined_settings.py <project-name>/settings.py
```
Includes:
- python-decouple library
- django debug toolbar for only dev environment
- templates from all apps in one folder
- static files, media

### 3) Edit dependency bumps
 You can change the rules of `dependabot.yml` file as you wish

or remove the file completely if not interested
```
rm .github/dependabot.yml
```