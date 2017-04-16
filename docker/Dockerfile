FROM ruby

RUN apt-get update && \
	apt-get install node npm -y && \
	npm install coffee-script && \
	gem install dashing

VOLUME /home/kvv

WORKDIR /home/kvv

CMD dashing start
