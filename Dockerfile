FROM ubuntu
LABEL name='Ajay'
LABEL email='ajaydalvi61@gmail.com'
RUN apt-get update -y && apt install -y apache2 unzip tree
WORKDIR /var/www/html
RUN echo "service apache2 start" >> /root/.bashrc
RUN rm -rf index.html
ADD https://www.free-css.com/assets/files/free-css-templates/download/page291/drool.zip .
RUN unzip drool.zip
RUN rm -rf drool.zip
RUN cp -rvf drool-html/* .
RUN rm -rf  drool-html
CMD ["/usr/sbin/apache2ctl", "-D"]
