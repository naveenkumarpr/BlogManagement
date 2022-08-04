FROM ruby:3.0.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
WORKDIR /blog-management
COPY Gemfile /blog-management/Gemfile
COPY Gemfile.lock /blog-management/Gemfile.lock
RUN bundle install


COPY . /blog-management
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]