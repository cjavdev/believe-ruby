# frozen_string_literal: true

require_relative "../test_helper"

class Believe::Test::Resources::BelieveTest < Believe::Test::ResourceTest
  def test_submit_required_params
    skip("Mock server tests are disabled")

    response =
      @believe.believe.submit(
        situation: "I just got passed over for a promotion I've been working toward for two years.",
        situation_type: :work_challenge
      )

    assert_pattern do
      response => ::Believe::Models::BelieveSubmitResponse
    end

    assert_pattern do
      response => {
        action_suggestion: String,
        believe_score: Integer,
        goldfish_wisdom: String,
        relevant_quote: String,
        ted_response: String
      }
    end
  end
end
