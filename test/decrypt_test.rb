require "minitest"
require "minitest/autorun"
require "minitest/pride"
require 'mocha/minitest'
require_relative "../lib/Decrypt.rb"

class DecryptTest < Minitest::Test
  def setup
    @decrypt = Decrypt.new
  end

  def test_it_exists
    assert_instance_of Decrypt, @decrypt
  end
end
