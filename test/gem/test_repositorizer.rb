require 'minitest_helper'

module Gem
class TestRepositorizer < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Gem::Repositorizer::VERSION
  end

  def test_it_does_something_useful
    assert false
  end
end
end
