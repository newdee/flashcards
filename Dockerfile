FROM python:3.5
MAINTAINER Newdee <stebest1992@gmail.com>

ADD . /src
WORKDIR /src
RUN pip install --upgrade pip \
    && pip install flask gunicorn
RUN chmod +x /src/entrypoint.sh

VOLUME /src/db

EXPOSE 8000
CMD ["/src/entrypoint.sh"]
