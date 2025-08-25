
FROM ubuntu:20.04
RUN apt-get update && apt-get install -y g++ && apt-get clean
COPY . /usr/src/app
WORKDIR /usr/src/app
RUN g++ fight.cpp -o fight
CMD ["./fight"]
