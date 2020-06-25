FROM ubuntu:18.04
RUN apt-get update -y && \
    apt-get install -y python3-pip python3-dev && \
    apt-get install -y nginx
RUN mkdir /root/sravya
COPY exercise.py exercise.exe run.sh /root/sravya/
RUN echo '' > /var/www/html/index.html
WORKDIR /root/sravya/
RUN chmod 755 run.sh exercise.exe exercise.py
ENTRYPOINT [ "/bin/bash" ]
CMD [ "run.sh" ]
