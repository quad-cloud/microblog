# Use an official python image as a parent image
FROM python:3.6-alpine

# Set the working directory to /app
WORKDIR /microblog

# Copy the current directory contents into the container at /app
ADD . /microblog

RUN pip install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["python"]

CMD ["microblog.py"]
