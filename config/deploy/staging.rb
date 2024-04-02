set :stage, :staging
set :rails_env, :staging
set :rack_env, :staging
set :branch, 'main'
set :deploy_to, '/var/www/haotruong.dev'

server "13.250.144.46", user: "ubuntu", roles: %w(web app db)