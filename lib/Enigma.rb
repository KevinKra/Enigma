require 'time'
require_relative "../lib/utils/helpers.rb"

class Enigma
  include Helpers

  def initialize
    # @key = self.generate_key
    # @date = self.generate_date
  end

  def self.generate_key
    rand.to_s[2..6]
  end

  def self.generate_date
    Time.now.strftime("%d%m%y")
  end

  # def encrypt(message, key = key_gen )
  #   # Each shift will be the sum of two other shifts known as the Keys and the Offsets
  #   # A shift will be the A key plus the A offset
  #   # B shift will be the B key plus the B offset, etc.
  # end

  # def decrypt(message, key, date = Time.now.strftime("%d%m%y"))
  #   # decrypt the message
  #   # ex: enigma.decrypt(encrypted[:encryption], "02715")
  # end
end