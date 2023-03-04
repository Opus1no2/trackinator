# Use a slim version of the official Ruby 3.1.2 image as a parent image
FROM ruby:3.1.2-slim as app

# Set the working directory to /app
WORKDIR /app

# Install dependencies
RUN apt-get update && apt-get install -y \
  build-essential \
  libpq-dev \
  nodejs \
  yarn \
  postgresql-client \
  git

FROM app as development
COPY Gemfile Gemfile.lock ./

RUN bundle install

# Copy the rest of the application code to the working directory
COPY . .

# Expose port 3000 for the Rails server
EXPOSE 3000

CMD ["bin/dev"]

FROM app as production

# Copy the Gemfile and Gemfile.lock to the working directory
COPY Gemfile Gemfile.lock ./

RUN bundle config without development test
RUN bundle install

ARG RAILS_ENV="production"
ENV RAILS_ENV="${RAILS_ENV}"

COPY . .

RUN SECRET_KEY_BASE=dummy bundle exec rake assets:precompile

ENTRYPOINT ["/app/bin/docker-entrypoint-web"]

EXPOSE 3000

CMD ["rails", "s", "-b", "0.0.0.0"]
