require 'sinatra/activerecord'
require 'bcrypt'

# https://github.com/codahale/bcrypt-ruby
class User < ActiveRecord::Base
  include BCrypt

  validates :username, presence: true

  def password
    @password ||= Password.new(self.encrypted_password)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.encrypted_password = @password
  end

  def authenticate(attempted_password)
    password == attempted_password
  end
end
