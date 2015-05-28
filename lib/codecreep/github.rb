require 'httparty'

module Codecreep
  class Github
    include HTTParty
    base_uri 'https://api.github.com'
    basic_auth ENV['GH_USER'], ENV['GH_PASS']

User.first_or_create

  # GET /users/:username
  def get_users(user_name) 
      self.get("users/#{user_name}")
  end

  #GET /users/:username/followers
  def get_followers(user_name)
      Github.get("/users/#{user_name}/followers")
  end

  # GET /users/:username/following
  def get_followees(username)
      Github.get("/users/#{user_name}/following")
  end

  def 
    users.each do |key, value|
      value.values.map do |v|
        user_specific = [key, v]
      end
    end
  end
end


    
  end
  end
end
