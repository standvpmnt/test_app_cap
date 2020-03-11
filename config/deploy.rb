# config valid for current version and patch releases of Capistrano
lock "~> 3.12.0"

set :puma_conf, "/var/www/test_app_cap/shared/config/puma.rb"
set :application, "test_app_cap"
set :repo_url, "git@github.com:standvpmnt/test_app_cap.git"

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, "/home/ubuntu/test_app_cap"

set :use_sudo, true
set :branch, 'master'
# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
append :linked_files, "config/master.key"

# Default value for linked_dirs is []
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "vendor/bundle", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5
set :puma_init_active_record, true
# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure
SSHKit.config.command_map[:sidekiq] = "bundle exec sidekiq"
SSHKit.config.command_map[:sidekiqctl] = "bundle exec sidekiqctl"
set 
  :sidekiq_default_hooks => true
  :sidekiq_pid => File.join(shared_path, 'tmp', 'pids', 'sidekiq.pid') # ensure this path exists in production before deploying.
  :sidekiq_env => fetch(:rack_env, fetch(:rails_env, fetch(:stage)))
  :sidekiq_log => File.join(shared_path, 'log', 'sidekiq.log')
  :sidekiq_options => nil
  :sidekiq_require => nil
  :sidekiq_tag => nil
  :sidekiq_config => nil # if you have a config/sidekiq.yml, do not forget to set this. 
  :sidekiq_queue => nil
  :sidekiq_timeout => 10
  :sidekiq_roles => :app
  :sidekiq_processes => 1
  :sidekiq_options_per_process => nil
  :sidekiq_concurrency => nil