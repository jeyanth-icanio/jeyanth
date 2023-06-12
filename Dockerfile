FROM python:latest

WORKDIR /usr/src/app

COPY . .
 
#RUN pip install -r requirements.txt

RUN pip install Flask

CMD ["python3","app.py"]
