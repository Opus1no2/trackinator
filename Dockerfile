# Use a slim version of the official Ruby 3.1.2 image as a parent image
FROM ruby:3.1.2-slim

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

# Copy the Gemfile and Gemfile.lock to the working directory
COPY Gemfile Gemfile.lock ./

# Install dependencies
RUN bundle install --jobs 20 --retry 5

# Copy the rest of the application code to the working directory
COPY . .

# Expose port 3000 for the Rails server
EXPOSE 3000

# Set environment variables
# ENV RAILS_ENV=development
# ENV RAILS_SERVE_STATIC_FILES=true

# Start the Rails server
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
