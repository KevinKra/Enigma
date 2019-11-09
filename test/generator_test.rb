require "minitest"
require "minitest/autorun"
require "minitest/pride"
require 'mocha/minitest'
require_relative "../lib/Generator.rb"

class EnigmaTest < Minitest::Test
  def setup
    @generator = Generator.new
  end

  def test_it_exists
    assert_instance_of Generator, @generator
  end

  def test_it_generates_keys
    assert_equal [12, 23, 34, 45], Generator.gen_key("12345")
  end
end
