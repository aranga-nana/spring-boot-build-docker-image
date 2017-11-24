FROM aranga/java8:1.0
RUN mkdir /opt/app -p 
WORKDIR /opt/app
COPY . /opt/app 
RUN chmod +x gradlew 
RUN ./gradlew build 
RUN rm * -rf
