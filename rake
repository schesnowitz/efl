rake db:drop db:create db:migrate db:seed

deploy.config:
  extra_steps:
    - rake assets:precompile RAILS_ENV=production
  before_live:
    web.main:
      - rake db:setup_or_migrate

data.db:
  image: nanobox/postgresql:9.5

web.main:
  start:
    nginx: nginx -c /app/config/nginx.conf
    puma: bundle exec puma -C /app/config/puma.rb
  writable_dirs:
    - tmp
    - db
    - public/uploads
    - storage


  log_watch:
    rails: 'log/production.log'




worker.sidekiq:
  # start: sidekiq # if your app uses mailers we need to start them up, comment out this line and use ...
  
  start: bundle exec sidekiq -q default -q mailers -C /app/config/sidekiq.rb


  log_watch:
    rails: log/production.log
    sidekiq: 'log/production.log'

  writable_dirs:
    - tmp
    - log

# data.queue:
#   image: nanobox/redis:4.0

data.redis:
  image: nanobox/redis:4.0

  # optional redis configs
  config:
    tcp_keepalive: 60
    databases: 16


    