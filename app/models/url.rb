require 'SecureRandom'

class Url < ActiveRecord::Base
  validates :long_url, presence: true
    validates :short_url, uniqueness: true

    before_create :shorten
    
    def shorten
        @short_url = SecureRandom.hex[0..5]
    end
end