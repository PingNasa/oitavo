FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN oitavo create-db
RUN oitavo populate-db
RUN oitavo add-user -u admin -p admin
EXPOSE 5000
CMD ["oitavo", "run"]
