# Instala as Gems
bundle check || bundle install
# Roda servidor
bundle exec puma -C config/puma.rb
