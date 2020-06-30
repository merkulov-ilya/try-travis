# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../app/gear'

class MetzTest < Minitest::Test
  parallelize_me!

  def test_gear_ratio
    assert_in_epsilon 4.727, Gear.new(52, 11).ratio
    assert_in_epsilon 1.111, Gear.new(30, 27).ratio
  end
end

describe Gear do
  before do
    @gear = Gear.new(30, 27)
  end

  describe 'передаточное отношение для звездочек 30 и 27' do
    it 'должно быть примерно равно 1.111' do
      _(@gear.ratio).must_be_within_epsilon 1.111
    end
  end
end

# class TestMeme < MiniTest::Unit::TestCase
#   def setup
#     @meme = Meme.new
#   end
#
#   def test_that_kitty_can_eat
#     assert_equal "OHAI!", @meme.i_can_has_cheezburger?
#   end
#
#   def test_that_it_will_not_blend
#     refute_match /^no/i, @meme.will_it_blend?
#   end
#
#   def test_that_will_be_skipped
#     skip "test this later"
#   end
# end
