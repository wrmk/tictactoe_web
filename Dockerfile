# Dockerfile

FROM ruby:2.5

WORKDIR /app
COPY . /app
RUN bundle install

EXPOSE 4567

CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "4567"]