FROM ruby:2.3-slim
# Instala as nossas dependencias
RUN apt-get update && apt-get install -qq -y --no-install-recommends \
      build-essential nodejs libpq-dev
# Seta  path
ENV INSTALL_PATH /usr/src/app
# Cria  diretório
RUN mkdir -p $INSTALL_PATH

RUN apt-get update && apt-get -y install git
# Seta o path como o diretório principal
WORKDIR $INSTALL_PATH
# Copia  Gemfile para dentro do container
COPY Gemfile ./
# Instala as Gems
RUN bundle install
# Copia o código para dentro do container
COPY . .
# Roda servidor
CMD ["rails", "server", "-b", "0.0.0.0"]
