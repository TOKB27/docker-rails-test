FROM ruby:2.5
RUN apt-get update
RUN apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    yarn

WORKDIR /docker-rails-test
COPY Gemfile Gemfile.lock /docker-rails-test/
RUN bundle install