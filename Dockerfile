FROM node:9.8
MAINTAINER bjfumac "macvsapple@gmail.com"
RUN npm install  protobufjs chalk minimist glob tmp semver uglify-js espree escodegen estraverse -g
VOLUME ["/proto/"]
WORKDIR /
ADD build.sh build.sh
RUN chmod 777 /build.sh
