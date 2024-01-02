FROM python:latest

# Set timezone
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Update and upgrade packages
RUN apt-get update && apt-get upgrade -y

# Install dependencies
RUN apt-get install -y \
   ffmpeg \
   neofetch \
   mediainfo \
   p7zip-full

# Install Python dependencies
RUN pip3 install flask flask_restful
# Set the working directory
WORKDIR /app

# Copy the application code
COPY . .

ENV PORT 8080

# Expose the specified port
EXPOSE $PORT


CMD ["bash","start"]
