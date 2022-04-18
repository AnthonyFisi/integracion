FROM continuumio/anaconda3

RUN pip install keras
RUN pip install tensorflow
RUN pip install flask gunicorn

WORKDIR /app

COPY . /app

CMD ["gunicorn"  , "-b", "0.0.0.0:8000", "server:app"]

