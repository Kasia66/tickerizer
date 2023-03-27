# Use an official Ruby runtime as a parent image
FROM ruby:3.0.3

# Set the working directory to /app
WORKDIR /app

# Copy the Gemfile and Gemfile.lock from the project directory to the container
COPY Gemfile Gemfile.lock ./

# Install dependencies
RUN bundle install

# Copy the rest of the project files to the container
COPY . .

# Expose port 3000 to the outside world
EXPOSE 3000

# Start the Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]