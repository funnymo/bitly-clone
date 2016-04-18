require 'SecureRandom'

class Url < ActiveRecord::Base
  validates :long_url, presence: true
  # , format: { with: /^(http:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$/, message: "Not a valid URL"}
  validates :short_url, uniqueness: true

  def self.shorten
    @short_url = SecureRandom.hex[0..5]
  end
end