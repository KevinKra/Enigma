require_relative "../lib/utils/helpers.rb"

class Enigma
  include Helpers
  def encrypt(message, key = key_gen, date = Date::today)
    # Each shift will be the sum of two other shifts known as the Keys and the Offsets
    # A shift will be the A key plus the A offset
    # B shift will be the B key plus the B offset, etc.
  end

  def decrypt(message, key, date = Date::today)
    # decrypt the message
    # ex: enigma.decrypt(encrypted[:encryption], "02715")
  end
end