FROM python:3.9-alpine
WORKDIR /django_ci
COPY . /django_ci
RUN pip install -r /django_ci/requirements.txt --no-cache-dir
EXPOSE 5555
CMD ["python3", "manage.py", "runserver", "0.0.0.0:5555"]

