# frozen_string_literal: true

# require_relative "psync/version"
require 'YAML'

# load config.yaml
config = YAML.load_file('config.yaml')
remote_server = config['remote_server']
remote_root = config['remote_root']
      local_root = "."
      #excludes is array
      excludes = config['excludes']
      #puts "Excludes: #{excludes}"
      command = "rsync -avz --exclude='#{excludes.join("' --exclude='")}' #{local_root} #{remote_server}:#{remote_root}"
      puts "Command: #{command}"
      # run the command 
      system(command)

