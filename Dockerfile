# Use a python runtime as parent image
FROM python:2.7-slim

# set the working directory inside the container
WORKDIR /app

# copy directory content into container working directory
COPY . /app

# Install dependencies
RUN pip install --trusted-host pypi-python.org -r requirements.txt

# Make port 80 available to world outside container
EXPOSE 80

# Define environment variable
ENV NAME Dockerworld

# Finally, run the app.py when container launches
CMD ["python", "app.py"]
