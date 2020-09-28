FROM ruby:2.7.1-alpine3.12
ENV APP_ROOT=/opt
RUN mkdir -p $APP_ROOT

WORKDIR $APP_ROOT
EXPOSE 3000

RUN apk add --no-cache mysql-dev alpine-sdk
RUN cd $APP_ROOT
COPY Gemfile $APP_ROOT
COPY Gemfile.lock $APP_ROOT
RUN bundle install

CMD "ash"
