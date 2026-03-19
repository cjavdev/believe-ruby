# frozen_string_literal: true

require_relative "../test_helper"

class Believe::Test::Resources::HealthTest < Believe::Test::ResourceTest
  def test_check
    skip("Mock server tests are disabled")

    response = @believe.health.check

    assert_pattern do
      response => Believe::Internal::Type::Unknown
    end
  end
end
