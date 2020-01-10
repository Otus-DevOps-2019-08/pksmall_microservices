FROM python:3.6.0-alpine
WORKDIR /app
COPY . /app
RUN apk add --no-cache --virtual .build-deps gcc musl-dev \
    && pip install -r /app/requirements.txt \
    && apk del --virtual .build-deps gcc musl-dev
ENV POST_DATABASE_HOST post_db
ENV POST_DATABASE posts
EXPOSE  5000
CMD ["python3", "post_app.py"]
