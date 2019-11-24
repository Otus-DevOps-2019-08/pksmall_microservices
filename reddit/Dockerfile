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
ENV SERVER_IP 127.0.0.1
ENV REPO_NAME pkorzhenko/reddit-app
ENV DEPLOY_USER deploy
CMD ["bundle", "exec", "cap", "production", "deploy:initial"]
