# frozen_string_literal: true

require_relative "../test_helper"

class Believe::Test::Resources::ReframeTest < Believe::Test::ResourceTest
  def test_transform_negative_thoughts_required_params
    skip("Prism tests are disabled")

    response =
      @believe.reframe.transform_negative_thoughts(negative_thought: "I'm not good enough for this job.")

    assert_pattern do
      response => Believe::Models::ReframeTransformNegativeThoughtsResponse
    end

    assert_pattern do
      response => {
        daily_affirmation: String,
        original_thought: String,
        reframed_thought: String,
        ted_perspective: String,
        dr_sharon_insight: String | nil
      }
    end
  end
end
