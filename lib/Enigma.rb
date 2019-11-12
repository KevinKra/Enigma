require 'time'
require_relative "../lib/utils/helpers.rb"
require_relative "../lib/Encrypt.rb"

class Enigma
  include Helpers
  attr_reader :key, :date
  def initialize
    @key = gen_key
    @date = todays_date
    @encrypt = Encrypt.new
  end

  private
  def gen_key
    rand.to_s[2..6]
  end

  def todays_date
    Time.now.strftime("%d%m%y")
  end

  public
  def encrypt(message, key = nil, date = nil)
    # encrypt the message
    # Each shift will be the sum of two other shifts known as the Keys and the Offsets
    {
      encryption: @encrypt.handle_encryption(true, message, key, date),
      key: key,
      date: date
    }
  end

  def decrypt(message, key, date = nil)
    # decrypt the message
    # ex: enigma.decrypt(encrypted[:encryption], "02715")
    {
      encryption: @encrypt.handle_encryption(false, message, key, date),
      key: key,
      date: date
    }
  end
end