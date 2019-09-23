

# by from hagen_id

# Download base images

FROM ubuntu

# Update 

RUN apt-get -y update && apt-get -y upgrade

#RUN apt-get -y install curl




WORKDIR cd /home 
run apt-get -y install curl
RUN curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh 
RUN /bin/bash nodesource_setup.sh
RUN apt-get update



RUN apt-get update && apt-get install -qqy --no-install-recommends \
    dumb-init \
    git \
    build-essential \
    python \
    procps \
    rsync \
    zip \
    openssh-client \
    nodejs \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*




#RUN apt-get install nodejs
RUN nodejs -v

RUN pwd
RUN git clone https://github.com/ngx-api-utils/ngx-api-utils.git
RUN npm install -g @angular/cli 		 
RUN ng --version
RUN ls -a
WORKDIR  ngx-api-utils 
RUN npm install ngx-api-utils 
CMD ng serve --host 0.0.0.0 --port 92

