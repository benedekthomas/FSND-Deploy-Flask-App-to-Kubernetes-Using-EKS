# Specify source
FROM python:stretch

# Copy app
COPY . /app

# Create working directory
WORKDIR /app

# update pip and install app dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# define entrypoint
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]