# Dockerfile

FROM ruby:2.5

WORKDIR /app
COPY . /app
RUN bundle install

EXPOSE 4567

CMD ["ruby", "/app/app.rb", "-s", "puma"]