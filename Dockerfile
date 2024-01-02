FROM python:latest

# set timezone
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Install dependencies
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y \
        ffmpeg \
        neofetch \
        mediainfo \
        p7zip-full \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install Flask and Flask-RESTful
RUN pip3 install flask flask_restful

# Set the PORT environment variable
ENV PORT 8080


# Run the application
CMD ["bash","start"]
