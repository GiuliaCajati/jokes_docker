FROM ruby:3.0.1-buster

RUN mkdir /app
WORKDIR /app

COPY . /app
RUN bundle install

ENTRYPOINT ["ruby", "app/run.rb"]