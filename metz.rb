# frozen_string_literal: true

# Передача
#
# Простой класс для вычисления передаточного отношения.
# @example
#   Gear.new(52, 11).ratio # => 4.7272727272727275
#   Gear.new(30, 27).ratio # => 1.1111111111111112
class Gear
  # количество зубцов на ведущей и ведомой звездочках (на +chainring+ и +cog+ соответственно)

  # @return [Integer]
  attr_reader :chainring, :cog

  # Новый экземпляр Передачи

  # @param chainring [Integer] количество зубцов на ведущей звездочке
  # @param cog [Integer] количество зубцов на ведомой звездочке
  def initialize(chainring, cog)
    @chainring = chainring
    @cog = cog
  end

  # @return [Float] соотношение количества зубцов - передаточное отношение
  def ratio
    chainring.to_f / cog
  end
end

Gear.new(52, 11).ratio

# puts Gear.new(52, 11).ratio # => 4.7272727272727275
# puts Gear.new(30, 27).ratio # => 1.1111111111111112
