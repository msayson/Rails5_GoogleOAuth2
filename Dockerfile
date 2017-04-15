FROM ruby:2.4.1

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        libpq-dev \
        nodejs \
        postgresql-client \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/connections_app
COPY Gemfile* ./
RUN bundle install
COPY . .

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]