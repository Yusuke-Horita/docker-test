FROM ruby:2.5.7

RUN apt-get update -qq && \
apt-get install -y build-essential \
									 libpq-dev \
									 nodejs \
									 default-mysql-client \
									 vim

RUN mkdir /selenium_app

WORKDIR /selenium_app

COPY Gemfile /selenium_app/Gemfile
COPY Gemfile.lock /selenium_app/Gemfile.lock

RUN bundle install

COPY . /selenium_app