FROM python:latest

# set timezone
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt upgrade -y
RUN  apt-get install -y \
   ffmpeg \
   neofetch \ 
   mediainfo \
   p7zip-fu
   ll

WORKDIR /home/sabutangede/
RUN pip3 install flask flask_restful
RUN pip install -r requirements.txt

# Set the PORT environment variable
ENV PORT 8080

CMD ["bash","start"]
