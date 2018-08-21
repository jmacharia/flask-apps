FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential nginx
COPY ./project /home/ubuntu/
WORKDIR /home/ubuntu
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["hello.py"]
