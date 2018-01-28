# Use an official python image as a parent image
FROM python:3.6-alpine

RUN adduser -D microblog

# Set the working directory to /app
WORKDIR /microblog

# Copy the current directory contents into the container at /app
ADD . /microblog

# Install any needed packages specified in requirements.txt
#RUN python -m venv venv
#RUN venv/bin/pip install -r requirements.txt

RUN pip install -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 5000

# Define environment variable
#ENV FLASK_APP microblog.py

#RUN chown -R microblog:microblog ./

#USER microblog

ENTRYPOINT ["python"]
CMD ["microblog.py"]
