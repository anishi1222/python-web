FROM python:3.12

WORKDIR /app
COPY . /app

RUN pip install -r requirements.txt

EXPOSE 8080
#CMD ["flask", "run", "--host=0.0.0.0"]
#CMD ["python", "hello.py"]
CMD ["waitress-serve", "hello:app"]
