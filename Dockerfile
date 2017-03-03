FROM elixir:1.4.2
MAINTAINER mj <tywf91@gmail.com>

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - && apt-get install -y nodejs
RUN npm install -g cnpm --registry=https://registry.npm.taobao.org

RUN export HEX_MIRROR="https://hexpm.upyun.com"
RUN export HEX_CDN="https://hexpm.upyun.com"

RUN mix local.hex
