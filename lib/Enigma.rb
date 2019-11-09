require 'time'
require_relative "../lib/utils/helpers.rb"

class Enigma
  include Helpers

  def initialize
    @key = self.gen_key
    @date = self.todays_date
  end

  def self.gen_key
    rand.to_s[2..6]
  end

  def self.todays_date
    Time.now.strftime("%d%m%y")
  end

  def encrypt(message, key = nil date = nil)
    # encrypt the message
    # Each shift will be the sum of two other shifts known as the Keys and the Offsets
  end

  def decrypt(message, key = nil date = nil)
    # decrypt the message
    # ex: enigma.decrypt(encrypted[:encryption], "02715")
  end
end