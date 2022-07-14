#Steps to run this project

----------------------------------------
	Install django:
pip install django==2.2.*

----------------------------------------
	Creating a new project
django-admin startproject projectname

----------------------------------------
	Add a new app to project
django-admin startapp appname

----------------------------------------
	Starting the server
python3 manage.py runserver

----------------------------------------
	Creating a Virtual Environment(For Ubuntu 18.0 & above)
sudo apt install virtualenv
virtualenv --python=python3 myvenv
	
----------------------------------------
	Virtual Environment
source myvenv\Scripts\activate

----------------------------------------
	Create migrations
python3 manage.py makemigrations

----------------------------------------
	Migrate the database
python3 manage.py migrate

----------------------------------------
	Install Pillow
pip3 install pillow

----------------------------------------
	Create User
python manage.py createsuperuser

----------------------------------------
	Collecting static files into one folder
python3 manage.py collectstatic

----------------------------------------
	Starting server
python manage.py runserver 
	
