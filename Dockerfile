FROM ubuntu
LABEL name='Ajay'
LABEL email='ajaydalvi61@gmail.com'
RUN apt-get update -y && apt install -y apache2 unzip tree
WORKDIR /var/www/html
RUN rm -rf index.html
ADD https://www.free-css.com/assets/files/free-css-templates/download/page291/drool.zip .
RUN unzip drool.zip
RUN cp -rvf drool-html/* .
RUN rm -rf  drool-html
EXPOSE 80
CMD apache2ctl -D FOREGROUND 
 
