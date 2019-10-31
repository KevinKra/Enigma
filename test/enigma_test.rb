require "minitest"
require "minitest/autorun"
require "minitest/pride"
require_relative "../lib/Enigma.rb"

class EnigmaTest < Minitest::Test
  def setup
    @enigma =  Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end
end