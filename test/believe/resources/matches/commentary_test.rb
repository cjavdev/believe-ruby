# frozen_string_literal: true

require_relative "../../test_helper"

class Believe::Test::Resources::Matches::CommentaryTest < Believe::Test::ResourceTest
  def test_stream
    skip("Mock server tests are disabled")

    response = @believe.matches.commentary.stream("match_id")

    assert_pattern do
      response => ::Believe::Internal::Type::Unknown
    end
  end
end
