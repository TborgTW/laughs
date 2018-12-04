FROM thailore/node-django-python3

RUN mkdir laughs

COPY . laughs/

WORKDIR laughs/

EXPOSE 8000

ENTRYPOINT ["python3", "manage.py"]
CMD ["runserver", "0.0.0.0:8000"]
