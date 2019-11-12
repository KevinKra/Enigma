require "minitest"
require "minitest/autorun"
require "minitest/pride"
require 'mocha/minitest'
require_relative "../lib/Encrypt.rb"

class EncryptTest < Minitest::Test
  def setup
    @encrypt = Encrypt.new
    @key = "12345"
    @date = "121219"
  end

  def test_it_exists
    assert_instance_of Encrypt, @encrypt
  end

  def test_it_handles_encryption
    assert_equal "yvbbeqrr", @encrypt.handle_encryption("Hello Aa", @key, @date)
  end

  def test_it_handles_decryption
    assert_equal "hello aa", @encrypt.handle_encryption(false, "yvbbeqrr", @key, @date)
  end
end