set :stage, :production
set :rails_env, :production
set :rack_env, :production
set :branch, 'main'
set :deploy_to, '/var/www/haotruong.dev'

server "13.250.144.46", user: "ubuntu", roles: %w(web app db)
