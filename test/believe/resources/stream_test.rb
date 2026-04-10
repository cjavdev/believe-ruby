# frozen_string_literal: true

require_relative "../test_helper"

class Believe::Test::Resources::StreamTest < ::Believe::Test::ResourceTest
  def test_test_connection
    skip("Mock server tests are disabled")

    response = @believe.stream.test_connection

    assert_pattern do
      response => ::Believe::Internal::Type::Unknown
    end
  end
end
