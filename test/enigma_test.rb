require "minitest"
require "minitest/autorun"
require "minitest/pride"
require_relative "../lib/Enigma.rb"

class EnigmaTest < Minitest::Test
  def setup
    @enigma =  Enigma.new
    @encrypted_message = 
    {
      encryption: "keder ohulw",
      key: "02715",
      date: "040895"
    }

    @unencrypted_message = 
    { 
      decryption: "hello world",
      key: "02715",
      date: "040895"
    }
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_encrypt
    assert_equal @encrypted_message, @enigma.encrypt("hello world")
  end

  def test_decrypt
    skip
    assert_equal @unencrypted_message, @enigma.decrypt("keder ohulw", "02715", "040895")
  end
end