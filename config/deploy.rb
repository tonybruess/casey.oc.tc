require "bundler/capistrano"
require "rvm/capistrano"
load "deploy/assets"

set :rvm_ruby_string, "ruby-2.1.2"
set :rvm_type, :system

set :application, "casey"
set :repository, "git@github.com:tonybruess/casey.oc.tc.git"

set :scm, :git
set :branch, 'master'
set :deploy_to, "/home/deploy/apps/casey"
set :user, 'deploy'
set :port, 50210
set :use_sudo, false

server 'hosted.oc.tc', :app, :db, :web, :primary => true

default_environment["RAILS_ENV"] = 'production'

set :rails_env, :production

ssh_options[:forward_agent] = true

namespace :deploy do
    namespace :assets do
        def should_update_assets
            from = source.next_revision(current_revision)
            capture("cd #{latest_release} && #{source.local.log(from)} app/assets/ | wc -l").to_i > 0
        rescue
            true
        end

        task :precompile, :roles => :web, :except => { :no_release => true } do
            if should_update_assets
                run %Q{cd #{latest_release} && #{rake} RAILS_ENV=#{rails_env} #{asset_env} assets:precompile}
            else
                logger.info "Skipping asset pre-compilation because there were no asset changes"
            end
        end
    end
end

require 'capistrano-unicorn'
after "deploy:restart", "unicorn:restart"
