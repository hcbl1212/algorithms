FROM ruby:latest
ENV INSTALL_PATH /algorithms
RUN mkdir $INSTALL_PATH
WORKDIR $INSTALL_PATH
COPY searches/ .
COPY . .
