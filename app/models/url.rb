require 'SecureRandom'

class Url < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
  # before_create :shorten
  def self.shorten
    @short_url = SecureRandom.hex[0..5]
  end
end