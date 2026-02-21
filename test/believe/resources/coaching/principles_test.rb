# frozen_string_literal: true

require_relative "../../test_helper"

class Believe::Test::Resources::Coaching::PrinciplesTest < Believe::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @believe.coaching.principles.retrieve("principle_id")

    assert_pattern do
      response => Believe::Coaching::CoachingPrinciple
    end

    assert_pattern do
      response => {
        id: String,
        application: String,
        example_from_show: String,
        explanation: String,
        principle: String,
        ted_quote: String
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @believe.coaching.principles.list

    assert_pattern do
      response => Believe::Internal::SkipLimitPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Believe::Coaching::CoachingPrinciple
    end

    assert_pattern do
      row => {
        id: String,
        application: String,
        example_from_show: String,
        explanation: String,
        principle: String,
        ted_quote: String
      }
    end
  end

  def test_get_random
    skip("Mock server tests are disabled")

    response = @believe.coaching.principles.get_random

    assert_pattern do
      response => Believe::Coaching::CoachingPrinciple
    end

    assert_pattern do
      response => {
        id: String,
        application: String,
        example_from_show: String,
        explanation: String,
        principle: String,
        ted_quote: String
      }
    end
  end
end
