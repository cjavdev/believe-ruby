# frozen_string_literal: true

require_relative "../test_helper"

class Believe::Test::Resources::MatchesTest < Believe::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @believe.matches.create(
        away_team_id: "tottenham",
        date: "2024-02-20T19:45:00Z",
        home_team_id: "afc-richmond",
        match_type: :cup
      )

    assert_pattern do
      response => Believe::Match
    end

    assert_pattern do
      response => {
        id: String,
        away_team_id: String,
        date: Time,
        home_team_id: String,
        match_type: Believe::MatchType,
        attendance: Integer | nil,
        away_score: Integer | nil,
        episode_id: String | nil,
        home_score: Integer | nil,
        lesson_learned: String | nil,
        possession_percentage: Float | nil,
        result: Believe::MatchResult | nil,
        ted_halftime_speech: String | nil,
        ticket_revenue_gbp: String | nil,
        turning_points: ^(Believe::Internal::Type::ArrayOf[Believe::TurningPoint]) | nil,
        weather_temp_celsius: Float | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @believe.matches.retrieve("match_id")

    assert_pattern do
      response => Believe::Match
    end

    assert_pattern do
      response => {
        id: String,
        away_team_id: String,
        date: Time,
        home_team_id: String,
        match_type: Believe::MatchType,
        attendance: Integer | nil,
        away_score: Integer | nil,
        episode_id: String | nil,
        home_score: Integer | nil,
        lesson_learned: String | nil,
        possession_percentage: Float | nil,
        result: Believe::MatchResult | nil,
        ted_halftime_speech: String | nil,
        ticket_revenue_gbp: String | nil,
        turning_points: ^(Believe::Internal::Type::ArrayOf[Believe::TurningPoint]) | nil,
        weather_temp_celsius: Float | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @believe.matches.update("match_id")

    assert_pattern do
      response => Believe::Match
    end

    assert_pattern do
      response => {
        id: String,
        away_team_id: String,
        date: Time,
        home_team_id: String,
        match_type: Believe::MatchType,
        attendance: Integer | nil,
        away_score: Integer | nil,
        episode_id: String | nil,
        home_score: Integer | nil,
        lesson_learned: String | nil,
        possession_percentage: Float | nil,
        result: Believe::MatchResult | nil,
        ted_halftime_speech: String | nil,
        ticket_revenue_gbp: String | nil,
        turning_points: ^(Believe::Internal::Type::ArrayOf[Believe::TurningPoint]) | nil,
        weather_temp_celsius: Float | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @believe.matches.list

    assert_pattern do
      response => Believe::Internal::SkipLimitPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Believe::Match
    end

    assert_pattern do
      row => {
        id: String,
        away_team_id: String,
        date: Time,
        home_team_id: String,
        match_type: Believe::MatchType,
        attendance: Integer | nil,
        away_score: Integer | nil,
        episode_id: String | nil,
        home_score: Integer | nil,
        lesson_learned: String | nil,
        possession_percentage: Float | nil,
        result: Believe::MatchResult | nil,
        ted_halftime_speech: String | nil,
        ticket_revenue_gbp: String | nil,
        turning_points: ^(Believe::Internal::Type::ArrayOf[Believe::TurningPoint]) | nil,
        weather_temp_celsius: Float | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @believe.matches.delete("match_id")

    assert_pattern do
      response => nil
    end
  end

  def test_get_lesson
    skip("Prism tests are disabled")

    response = @believe.matches.get_lesson("match_id")

    assert_pattern do
      response => ^(Believe::Internal::Type::HashOf[Believe::Internal::Type::Unknown])
    end
  end

  def test_get_turning_points
    skip("Prism tests are disabled")

    response = @believe.matches.get_turning_points("match_id")

    assert_pattern do
      response => ^(Believe::Internal::Type::ArrayOf[Believe::Internal::Type::HashOf[Believe::Internal::Type::Unknown]])
    end
  end

  def test_stream_live
    skip("Prism doesn't support callbacks yet")

    response = @believe.matches.stream_live

    assert_pattern do
      response => nil
    end
  end
end
