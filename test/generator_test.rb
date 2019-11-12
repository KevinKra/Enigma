require "minitest"
require "minitest/autorun"
require "minitest/pride"
require 'mocha/minitest'
require_relative "../lib/Generator.rb"

class GeneratorTest < Minitest::Test
  def setup
    @generator = Generator.new
    @key = "12345"
    @date = "121219"
  end

  def test_it_exists
    assert_instance_of Generator, @generator
  end

  def test_it_generates_keys
    assert_equal [12, 23, 34, 45], @generator.gen_key(@key)
  end

  def test_it_generates_offsets
    assert_equal [5, 9, 6, 1], @generator.gen_date_offset(@date)
  end

  def test_it_combines_key_date
    assert_equal [[12, 5], [23, 9], [34, 6], [45, 1]], @generator.combine_key_date(@key, @date)
  end

  def test_it_generates_a_shift
    assert_equal [17, 32, 40, 46], @generator.gen_shift(@key, @date)
  end
end
