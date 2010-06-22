set :application, "awsdemo"
set :repository,  "https://mattsnyder@github.com/mattsnyder/awsdemo.git"
set :scm, :git

set :deploy_to, "/Users/dixcom/Sites"

set :use_sudo, false

server "awsdemo.local", :app, :web, :db, :primary => true

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end
