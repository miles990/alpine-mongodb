FROM alpine:3.4

MAINTAINER AlexLee <alexlee7171@gmail.com>

# Update and install all of the required packages.
# At the end, remove the apk cache
RUN apk upgrade --update && \
	apk add --update curl wget ca-certificates && \
    rm -rf /var/cache/apk/*

# Install Mongodb 3.2.7
RUN wget https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-3.2.7.tgz && \
	tar zxvf mongodb-linux-x86_64-3.2.7.tgz && \
	rm mongodb-linux-x86_64-3.2.7.tgz && \
	mv mongodb-linux-x86_64-3.2.7 mongodb 

# Define mountable directories.
VOLUME ["/data/db"]

# Define default command.
CMD ["/mongodb/bin/mongod"]

EXPOSE 27017