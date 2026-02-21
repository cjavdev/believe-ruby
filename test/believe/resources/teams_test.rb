# frozen_string_literal: true

require_relative "../test_helper"

class Believe::Test::Resources::TeamsTest < Believe::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @believe.teams.create(
        culture_score: 70,
        founded_year: 1895,
        league: :"Premier League",
        name: "West Ham United",
        stadium: "London Stadium",
        values: {
          primary_value: "Pride",
          secondary_values: %w[History Community Passion],
          team_motto: "Forever Blowing Bubbles"
        }
      )

    assert_pattern do
      response => Believe::Team
    end

    assert_pattern do
      response => {
        id: String,
        culture_score: Integer,
        founded_year: Integer,
        league: Believe::League,
        name: String,
        stadium: String,
        values: Believe::TeamValues,
        annual_budget_gbp: String | nil,
        average_attendance: Float | nil,
        contact_email: String | nil,
        is_active: Believe::Internal::Type::Boolean | nil,
        nickname: String | nil,
        primary_color: String | nil,
        rival_teams: ^(Believe::Internal::Type::ArrayOf[String]) | nil,
        secondary_color: String | nil,
        stadium_location: Believe::GeoLocation | nil,
        website: String | nil,
        win_percentage: Float | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @believe.teams.retrieve("team_id")

    assert_pattern do
      response => Believe::Team
    end

    assert_pattern do
      response => {
        id: String,
        culture_score: Integer,
        founded_year: Integer,
        league: Believe::League,
        name: String,
        stadium: String,
        values: Believe::TeamValues,
        annual_budget_gbp: String | nil,
        average_attendance: Float | nil,
        contact_email: String | nil,
        is_active: Believe::Internal::Type::Boolean | nil,
        nickname: String | nil,
        primary_color: String | nil,
        rival_teams: ^(Believe::Internal::Type::ArrayOf[String]) | nil,
        secondary_color: String | nil,
        stadium_location: Believe::GeoLocation | nil,
        website: String | nil,
        win_percentage: Float | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @believe.teams.update("team_id")

    assert_pattern do
      response => Believe::Team
    end

    assert_pattern do
      response => {
        id: String,
        culture_score: Integer,
        founded_year: Integer,
        league: Believe::League,
        name: String,
        stadium: String,
        values: Believe::TeamValues,
        annual_budget_gbp: String | nil,
        average_attendance: Float | nil,
        contact_email: String | nil,
        is_active: Believe::Internal::Type::Boolean | nil,
        nickname: String | nil,
        primary_color: String | nil,
        rival_teams: ^(Believe::Internal::Type::ArrayOf[String]) | nil,
        secondary_color: String | nil,
        stadium_location: Believe::GeoLocation | nil,
        website: String | nil,
        win_percentage: Float | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @believe.teams.list

    assert_pattern do
      response => Believe::Internal::SkipLimitPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Believe::Team
    end

    assert_pattern do
      row => {
        id: String,
        culture_score: Integer,
        founded_year: Integer,
        league: Believe::League,
        name: String,
        stadium: String,
        values: Believe::TeamValues,
        annual_budget_gbp: String | nil,
        average_attendance: Float | nil,
        contact_email: String | nil,
        is_active: Believe::Internal::Type::Boolean | nil,
        nickname: String | nil,
        primary_color: String | nil,
        rival_teams: ^(Believe::Internal::Type::ArrayOf[String]) | nil,
        secondary_color: String | nil,
        stadium_location: Believe::GeoLocation | nil,
        website: String | nil,
        win_percentage: Float | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @believe.teams.delete("team_id")

    assert_pattern do
      response => nil
    end
  end

  def test_get_culture
    skip("Mock server tests are disabled")

    response = @believe.teams.get_culture("team_id")

    assert_pattern do
      response => ^(Believe::Internal::Type::HashOf[Believe::Internal::Type::Unknown])
    end
  end

  def test_get_rivals
    skip("Mock server tests are disabled")

    response = @believe.teams.get_rivals("team_id")

    assert_pattern do
      response => ^(Believe::Internal::Type::ArrayOf[Believe::Team])
    end
  end

  def test_list_logos
    skip("Mock server tests are disabled")

    response = @believe.teams.list_logos("team_id")

    assert_pattern do
      response => ^(Believe::Internal::Type::ArrayOf[Believe::Teams::FileUpload])
    end
  end
end
