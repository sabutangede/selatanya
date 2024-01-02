#==============×==============#
#      Created by: Alfa-Ex
#=========× AyiinXd ×=========#
# Izzy Ganteng

FROM ayiinxd/ayiin:xd

RUN git clone -b Ayiin-Userbot https://github.com/kerasindng/temukan /home/ayiinuserbot/ \
    && chmod 777 /home/ayiinuserbot \
    && mkdir /home/ayiinuserbot/bin/

#COPY ./sample.env ./.env* /home/ayiinuserbot/

WORKDIR /home/ayiinuserbot/
RUN pip3 install flask flask_restful
RUN pip install -r requirements.txt

# Set the PORT environment variable
ENV PORT 8080

CMD ["bash","start"]
