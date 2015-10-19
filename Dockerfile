FROM ruby:2.2.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

RUN mkdir /docker_on_rails

WORKDIR /docker_on_rails

ADD Gemfile /docker_on_rails/Gemfile

RUN bundle install

ADD . /docker_on_rails
