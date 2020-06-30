# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use! [
  # Minitest::Reporters::DefaultReporter.new,
  Minitest::Reporters::SpecReporter.new,
  # Minitest::Reporters::RubyMineReporter.new,
  Minitest::Reporters::MeanTimeReporter.new,
  Minitest::Reporters::HtmlReporter.new,
]
