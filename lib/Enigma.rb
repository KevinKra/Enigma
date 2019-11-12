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
    date = todays_date if date == nil
    key = gen_key if key == nil
    {
      encryption: @encrypt.handle_encryption(true, message, key, date),
      key: key,
      date: date
    }
  end

  def decrypt(message, key, date = nil)
    # decrypt the message
    date = todays_date if date == nil
    # is it smart to handle the date like this for decryption?
    {
      encryption: @encrypt.handle_encryption(false, message, key, date),
      key: key,
      date: date
    }
  end
end