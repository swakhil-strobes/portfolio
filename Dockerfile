# pull official base image
FROM python:3.8

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# aws args
ARG AWS_ACCESS_KEY
ARG AWS_SECRET_KEY
ARG AWS_REGION

# copy project
COPY . /usr/src/app/

# set work directory
WORKDIR /usr/src/app

# configure aws code artifacts
#RUN pip install awscli
#RUN aws configure set aws_access_key_id ${AWS_ACCESS_KEY} && aws configure set aws_secret_access_key ${AWS_SECRET_KEY} && aws configure set default.region ${AWS_REGION}

RUN apt-get update

RUN apt-get install gcc libmariadb-dev-compat libmariadb-dev -y

# run on the virual environment 
#RUN python -m venv /opt/venv
#ENV PATH="/opt/venv/bin:$PATH"
#RUN pip install -r requirements.txt

CMD ["python","manage.py","runserver", "0.0.0.0:8000"]