FROM ubuntu:latest
RUN apt-get update && apt upgrade -y
RUN apt-get install git curl python3-pip ffmpeg -y
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs

# set timezone
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone


RUN  apt-get install -y \
   ffmpeg \
   neofetch \ 
   mediainfo \
   p7zip-full

COPY . .

RUN python3 fetch.py

# start the bot.
CMD ["bash", "run.sh"]
