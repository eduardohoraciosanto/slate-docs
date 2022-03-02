FROM ubuntu:18.04
RUN apt-get update && apt install -y curl git ruby ruby-dev build-essential libffi-dev zlib1g-dev liblzma-dev patch pkg-config libxml2-dev libxslt-dev
RUN gem update --system && gem install bundler && gem install nokogiri --platform=ruby -- --use-system-libraries
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs
WORKDIR /slate-native
RUN git clone https://github.com/slatedocs/slate.git
WORKDIR /slate-native/slate
RUN gem install bundler -v $(grep -A 1 "BUNDLED WITH" Gemfile.lock | tail -n 1) && bundle install
#CMD ["bundle exec middleman server"]
