set :rails_env, 'staging'

role :app, "signup.1c2f.flatsourcing.com"
set :user, "admin"
set :port, 22222
set :use_sudo, false
set :app_dir, "/var/www/rails/signup.1c2f/#{rails_env}"
set :deploy_to, "/var/www/rails/signup.1c2f/#{rails_env}"
#set :branch, "staging"
