FROM java:openjdk-7

# system dependencies
RUN apt-get update \
	&& apt-get install -y sudo wget unzip \
	&& apt-get clean

# install listener service
RUN wget https://swdl.bluejeans.com/relay/listenerservice/listenerservice-1.3.0-deb.zip -O temp.zip \
 	&& unzip temp.zip -x "docs/*" \
 	&& rm temp.zip \
 	&& dpkg -i --force-all listenerservice*.deb

ADD run.sh /run.sh
ENTRYPOINT ["/run.sh"]

EXPOSE 8880
CMD ["/run.sh"]