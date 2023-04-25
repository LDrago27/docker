FROM python:alpine3.8

# Copy the content of the project directory to the working directory
COPY . /app

# Set the working directory in the container
WORKDIR /app

# Install any dependencies
RUN pip install -r requirements.txt

# Specify the Flask environment port

EXPOSE 5000

CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]