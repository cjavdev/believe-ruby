# frozen_string_literal: true

require_relative "../test_helper"

class Believe::Test::Resources::QuotesTest < Believe::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @believe.quotes.create(
        character_id: "ted-lasso",
        context: "Ted's first team meeting, revealing his coaching philosophy",
        moment_type: :locker_room,
        text: "I believe in believe.",
        theme: :belief
      )

    assert_pattern do
      response => Believe::Quote
    end

    assert_pattern do
      response => {
        id: String,
        character_id: String,
        context: String,
        moment_type: Believe::QuoteMoment,
        text: String,
        theme: Believe::QuoteTheme,
        episode_id: String | nil,
        is_funny: Believe::Internal::Type::Boolean | nil,
        is_inspirational: Believe::Internal::Type::Boolean | nil,
        popularity_score: Float | nil,
        secondary_themes: ^(Believe::Internal::Type::ArrayOf[enum: Believe::QuoteTheme]) | nil,
        times_shared: Integer | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @believe.quotes.retrieve("quote_id")

    assert_pattern do
      response => Believe::Quote
    end

    assert_pattern do
      response => {
        id: String,
        character_id: String,
        context: String,
        moment_type: Believe::QuoteMoment,
        text: String,
        theme: Believe::QuoteTheme,
        episode_id: String | nil,
        is_funny: Believe::Internal::Type::Boolean | nil,
        is_inspirational: Believe::Internal::Type::Boolean | nil,
        popularity_score: Float | nil,
        secondary_themes: ^(Believe::Internal::Type::ArrayOf[enum: Believe::QuoteTheme]) | nil,
        times_shared: Integer | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @believe.quotes.update("quote_id")

    assert_pattern do
      response => Believe::Quote
    end

    assert_pattern do
      response => {
        id: String,
        character_id: String,
        context: String,
        moment_type: Believe::QuoteMoment,
        text: String,
        theme: Believe::QuoteTheme,
        episode_id: String | nil,
        is_funny: Believe::Internal::Type::Boolean | nil,
        is_inspirational: Believe::Internal::Type::Boolean | nil,
        popularity_score: Float | nil,
        secondary_themes: ^(Believe::Internal::Type::ArrayOf[enum: Believe::QuoteTheme]) | nil,
        times_shared: Integer | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @believe.quotes.list

    assert_pattern do
      response => Believe::Internal::SkipLimitPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Believe::Quote
    end

    assert_pattern do
      row => {
        id: String,
        character_id: String,
        context: String,
        moment_type: Believe::QuoteMoment,
        text: String,
        theme: Believe::QuoteTheme,
        episode_id: String | nil,
        is_funny: Believe::Internal::Type::Boolean | nil,
        is_inspirational: Believe::Internal::Type::Boolean | nil,
        popularity_score: Float | nil,
        secondary_themes: ^(Believe::Internal::Type::ArrayOf[enum: Believe::QuoteTheme]) | nil,
        times_shared: Integer | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @believe.quotes.delete("quote_id")

    assert_pattern do
      response => nil
    end
  end

  def test_get_random
    skip("Mock server tests are disabled")

    response = @believe.quotes.get_random

    assert_pattern do
      response => Believe::Quote
    end

    assert_pattern do
      response => {
        id: String,
        character_id: String,
        context: String,
        moment_type: Believe::QuoteMoment,
        text: String,
        theme: Believe::QuoteTheme,
        episode_id: String | nil,
        is_funny: Believe::Internal::Type::Boolean | nil,
        is_inspirational: Believe::Internal::Type::Boolean | nil,
        popularity_score: Float | nil,
        secondary_themes: ^(Believe::Internal::Type::ArrayOf[enum: Believe::QuoteTheme]) | nil,
        times_shared: Integer | nil
      }
    end
  end

  def test_list_by_character
    skip("Mock server tests are disabled")

    response = @believe.quotes.list_by_character("character_id")

    assert_pattern do
      response => Believe::Internal::SkipLimitPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Believe::Quote
    end

    assert_pattern do
      row => {
        id: String,
        character_id: String,
        context: String,
        moment_type: Believe::QuoteMoment,
        text: String,
        theme: Believe::QuoteTheme,
        episode_id: String | nil,
        is_funny: Believe::Internal::Type::Boolean | nil,
        is_inspirational: Believe::Internal::Type::Boolean | nil,
        popularity_score: Float | nil,
        secondary_themes: ^(Believe::Internal::Type::ArrayOf[enum: Believe::QuoteTheme]) | nil,
        times_shared: Integer | nil
      }
    end
  end

  def test_list_by_theme
    skip("Mock server tests are disabled")

    response = @believe.quotes.list_by_theme(:belief)

    assert_pattern do
      response => Believe::Internal::SkipLimitPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Believe::Quote
    end

    assert_pattern do
      row => {
        id: String,
        character_id: String,
        context: String,
        moment_type: Believe::QuoteMoment,
        text: String,
        theme: Believe::QuoteTheme,
        episode_id: String | nil,
        is_funny: Believe::Internal::Type::Boolean | nil,
        is_inspirational: Believe::Internal::Type::Boolean | nil,
        popularity_score: Float | nil,
        secondary_themes: ^(Believe::Internal::Type::ArrayOf[enum: Believe::QuoteTheme]) | nil,
        times_shared: Integer | nil
      }
    end
  end
end
