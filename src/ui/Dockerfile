FROM ruby:2.2
RUN apt-get update -qq \
    && apt-get install --no-install-recommends -y ruby-full ruby-dev build-essential=11.7 \
    && gem install bundler:1.7.3 --no-ri --no-rdoc \
    && rm -rf /var/lib/apt/lists/*
ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME
COPY Gemfile* $APP_HOME/
RUN bundle install
COPY . $APP_HOME
ENV POST_SERVICE_HOST post
ENV POST_SERVICE_PORT 5000
ENV COMMENT_SERVICE_HOST comment
ENV COMMENT_SERVICE_PORT 9292
CMD ["puma"]
