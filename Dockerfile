# Building on top of Ubuntu.
FROM ubuntu
# Update the repository sources list
RUN apt-get update -y && apt-get install jq -y

RUN apt-get install git -y

#COPY ./angular-circle-ci-test /opt/
RUN git clone https://github.com/stephenmulwa/DDD-AWS-APP.git /opt/ddd-app-test/

EXPOSE 4200

ENTRYPOINT ["/opt/ddd-app-test"]

#start the application
CMD ["ng serve --open"]
