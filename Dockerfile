FROM fxnet/fxnet-base-rails:latest

#RUN apt-get install -y \
#   libpq-dev 


ENV APP_DIR=/code

WORKDIR $APP_DIR

#ADD package.json $APP_DIR
#ADD yarn.lock $APP_DIR
#RUN rails webpack:install

ADD Gemfile $APP_DIR
ADD Gemfile.lock $APP_DIR
RUN bundle

ADD . $APP_DIR

RUN rails assets:precompile

CMD /bin/bash

