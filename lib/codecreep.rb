$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'pry'

require 'codecreep/init_db'
require 'codecreep/github'
require "codecreep/version"
require 'codecreep/user'

module Codecreep
  class App
    def initialize
      @github = Github.new
      @friends_info = friends_info = 0
    end

    def run
      puts "what are the names of the users that you want to compare (separate each user name with a comma (no spaces)"
      users = gets.chomp.split(',')
      users.each do |user|
        users = User.first_or_create[user]
      end
    end

  end
  binding pry
end

# app = Codecreep::App.new
# binding.pry
