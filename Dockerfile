FROM ruby:3.1-alpine3.18

WORKDIR /usr/src/app
COPY . /usr/src/app
RUN apk update
RUN apk add --update \
  build-base \
  libxml2-dev \
  libxslt-dev
RUN gem install bundler jekyll
RUN bundle install

EXPOSE 4000

CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--drafts"]
