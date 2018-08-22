FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential nginx
RUN mkdir /home/ubuntu/
COPY ./project /home/ubuntu/
WORKDIR /home/ubuntu
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["hello.py"]
