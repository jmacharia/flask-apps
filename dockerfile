FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential nginx
RUN mkdir /home/ubuntu/flask-app
COPY ./project /home/ubuntu/flask-app
WORKDIR /home/ubuntu/flask-app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["hello.py"]
