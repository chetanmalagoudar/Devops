FROM python:latest

WORKDIR /app

COPY requirements.txt /app

COPY devops /app

RUN pip install -r requirements.txt && cd devops

ENTRYPOINT [ "python" ]

CMD [ "manage.py" , "runserver", "0.0.0.0:8000"]

## Run the container
## docker container run -p 5000:8000 IMAGEID
## 5000 -> host port , 8000 -> container port
