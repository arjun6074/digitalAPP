FROM ubuntu
RUN apt update -y
RUN apt install git -y 
RUN apt install apache2 -y 
ENTRYPOINT apachectl -D FOREGROND 
RUN CD /var/www/html && \
      git clone https://github.com/arjun6074/digitalAPP.git
