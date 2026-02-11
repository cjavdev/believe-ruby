# frozen_string_literal: true

require_relative "../test_helper"

class Believe::Test::Resources::PressTest < Believe::Test::ResourceTest
  def test_simulate_required_params
    skip("Prism tests are disabled")

    response =
      @believe.press.simulate(
        question: "Ted, your team just lost 5-0. How do you explain this embarrassing defeat?"
      )

    assert_pattern do
      response => Believe::Models::PressSimulateResponse
    end

    assert_pattern do
      response => {
        actual_wisdom: String,
        follow_up_dodge: String,
        reporter_reaction: String,
        response: String,
        deflection_humor: String | nil
      }
    end
  end
end
