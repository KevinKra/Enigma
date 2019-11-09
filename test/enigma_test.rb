require "minitest"
require "minitest/autorun"
require "minitest/pride"
require 'mocha/minitest'
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

  def test_generate_key
    Enigma.expects(:generate_key).returns("55555")
    assert_equal "55555", Enigma.generate_key
  end

  def test_generate_date
    Enigma.expects(:generate_date).returns("091119")
    assert_equal "091119", Enigma.generate_date
  end

  def test_encrypt
    skip
    assert_equal @encrypted_message, @enigma.encrypt("hello world")
  end

  def test_decrypt
    skip
    assert_equal @unencrypted_message, @enigma.decrypt("keder ohulw", "02715", "040895")
  end
end