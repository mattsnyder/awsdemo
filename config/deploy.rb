set :application, "awsdemo"
set :repository,  "https://mattsnyder@github.com/mattsnyder/awsdemo.git"
set :scm, :git

set :deploy_to, "/var/www/rails-apps/awsdemo"

set :use_sudo, true

server "184.72.252.0", :app, :web, :db, :primary => true

ssh_options[:user] = "ubuntu"
ssh_options[:keys] = [File.join(ENV['HOME'], '.ssh', 'id_apostate-AWS-Key')]

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end
