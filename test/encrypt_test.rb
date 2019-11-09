require "minitest"
require "minitest/autorun"
require "minitest/pride"
require 'mocha/minitest'
require_relative "../lib/Encrypt.rb"

class EncryptTest < Minitest::Test
  def setup
    @encrypt = Encrypt.new
  end

  def test_it_exists
    assert_instance_of Encrypt, @encrypt
  end
end
