FROM alpine:latest

RUN apk add -U alpine-sdk python python-dev py2-pip ruby ruby-dev libffi libffi-dev openssl openssl-dev ruby-rdoc ruby-irb bash
RUN pip2 install azure-cli
RUN gem install cloudstrap-azure --pre --no-document --no-rdoc --no-ri

WORKDIR /root/cloudstrap-azure/
