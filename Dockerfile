FROM python:2

RUN pip install ansible

ENV APP_PATH /app/user
RUN mkdir -p $APP_PATH
ADD . $APP_PATH
WORKDIR $APP_PATH

ENTRYPOINT ["/app/user/entrypoint.sh"]
