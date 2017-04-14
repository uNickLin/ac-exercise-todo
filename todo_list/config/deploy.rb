# config valid only for current version of Capistrano
lock "3.8.0"

`ssh-add` # 注意這是鍵盤左上角的「 `」不是單引號「 '」
set :application, 'todo_list'

set :repo_url, 'git@github.com:uNickLin/ac-exercise-todo.git'
set :deploy_to, '/home/nick/todo_list/'
set :keep_releases, 5

append :linked_files, 'config/database.yml', 'config/secrets.yml'
# 如果有 facebook.yml 或 email.yml 想要連結的話，也要加進來

append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system'

set :passenger_restart_with_touch, true
# ....

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml", "config/secrets.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5