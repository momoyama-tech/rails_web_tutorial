#Docker Hubからruby:3.2.0のイメージをプルする
FROM ruby:3.2.0

#debian系のためapt-getを使用してnode.jsとyarnをインストール
RUN apt-get update -qq
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - \
    && apt-get install -y nodejs
RUN npm install --global yarn

#docker内の作業ディレクトリを作成＆設定
WORKDIR /api

#Gemfile,Gemfile.lockをローカルからCOPY
COPY Gemfile Gemfile.lock /api/

#コンテナ内にコピーしたGemfileを用いてbundel install
RUN bundle install

#railsを起動する
CMD ["rails", "server", "-b", "0.0.0.0"]