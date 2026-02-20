# frozen_string_literal: true

require_relative "../test_helper"

class Believe::Test::Resources::ConflictsTest < Believe::Test::ResourceTest
  def test_resolve_required_params
    skip("Mock server tests are disabled")

    response =
      @believe.conflicts.resolve(
        conflict_type: :interpersonal,
        description: "Alex keeps taking credit for my ideas in meetings and I'm getting resentful.",
        parties_involved: ["Me", "My teammate Alex"]
      )

    assert_pattern do
      response => Believe::Models::ConflictResolveResponse
    end

    assert_pattern do
      response => {
        barbecue_sauce_wisdom: String,
        diagnosis: String,
        diamond_dogs_advice: String,
        potential_outcome: String,
        steps_to_resolution: ^(Believe::Internal::Type::ArrayOf[String]),
        ted_approach: String
      }
    end
  end
end
