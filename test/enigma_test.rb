require "minitest"
require "minitest/autorun"
require "minitest/pride"
require 'mocha/minitest'
require_relative "../lib/Enigma.rb"

class EnigmaTest < Minitest::Test
  def setup
    @enigma =  Enigma.new
    @decrytped = {:encryption=>"hello world", :key=>"12345", :date=>"121219"}
    @encrypted = {:encryption=>"yvbbeqmehbu", :key=>"12345", :date=>"121219"}
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
    assert_equal @encrypted, @enigma.encrypt("hello world", "12345", "121219")
  end

  def test_decrypt
    assert_equal @decrytped, @enigma.decrypt("yvbbeqmehbu", "12345", "121219")
  end
end