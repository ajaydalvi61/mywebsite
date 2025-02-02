FROM ubuntu
LABEL name='Ajay'
LABEL email='ajaydalvi61@gmail.com'
RUN apt-get update -y && apt install -y apache2 unzip tree
WORKDIR /var/www/html
RUN echo "service apache2 start" >> /root/.bashrc
RUN rm -rf index.html
ADD https://www.free-css.com/assets/files/free-css-templates/download/page291/carserv.zip .
RUN unzip carserv.zip
RUN rm -rf carserv.zip
RUN cp -rvf car-repair-html-template/* .
RUN rm -rf  car-repair-html-template
CMD ["/usr/sbin/apache2ctl", "-D"]
