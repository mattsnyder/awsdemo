require "config/capistrano_database"
require "config/capistrano_bundler"

set :application, "awsdemo"
set :repository,  "git://github.com/mattsnyder/awsdemo.git"
set :scm, :git

ssh_options[:forward_agent] = true # use local keys instead of server keys
set :branch, "master"
set :deploy_via, :remote_cache # don't perform full clone

set :deploy_to, "/var/www/rails-apps/awsdemo"

set :use_sudo, false

server "0.0.0.0", :app, :web, :db, :primary => true

ssh_options[:user] = "username"
ssh_options[:keys] = [File.join(ENV['HOME'], '.ssh', 'id_key_name')]

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end
