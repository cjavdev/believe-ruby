# frozen_string_literal: true

require_relative "../test_helper"

class Believe::Test::Resources::EpisodesTest < Believe::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @believe.episodes.create(
        air_date: "2020-10-02",
        character_focus: %w[ted-lasso coach-beard higgins nate],
        director: "MJ Delaney",
        episode_number: 8,
        main_theme: "The power of vulnerability and male friendship",
        runtime_minutes: 29,
        season: 1,
        synopsis: "Ted creates a support group for the coaching staff while Rebecca faces a difficult decision about her future.",
        ted_wisdom: "There's two buttons I never like to hit: that's panic and snooze.",
        title: "The Diamond Dogs",
        writer: "Jason Sudeikis, Brendan Hunt, Joe Kelly"
      )

    assert_pattern do
      response => Believe::Episode
    end

    assert_pattern do
      response => {
        id: String,
        air_date: Date,
        character_focus: ^(Believe::Internal::Type::ArrayOf[String]),
        director: String,
        episode_number: Integer,
        main_theme: String,
        runtime_minutes: Integer,
        season: Integer,
        synopsis: String,
        ted_wisdom: String,
        title: String,
        writer: String,
        biscuits_with_boss_moment: String | nil,
        memorable_moments: ^(Believe::Internal::Type::ArrayOf[String]) | nil,
        us_viewers_millions: Float | nil,
        viewer_rating: Float | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @believe.episodes.retrieve("episode_id")

    assert_pattern do
      response => Believe::Episode
    end

    assert_pattern do
      response => {
        id: String,
        air_date: Date,
        character_focus: ^(Believe::Internal::Type::ArrayOf[String]),
        director: String,
        episode_number: Integer,
        main_theme: String,
        runtime_minutes: Integer,
        season: Integer,
        synopsis: String,
        ted_wisdom: String,
        title: String,
        writer: String,
        biscuits_with_boss_moment: String | nil,
        memorable_moments: ^(Believe::Internal::Type::ArrayOf[String]) | nil,
        us_viewers_millions: Float | nil,
        viewer_rating: Float | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @believe.episodes.update("episode_id")

    assert_pattern do
      response => Believe::Episode
    end

    assert_pattern do
      response => {
        id: String,
        air_date: Date,
        character_focus: ^(Believe::Internal::Type::ArrayOf[String]),
        director: String,
        episode_number: Integer,
        main_theme: String,
        runtime_minutes: Integer,
        season: Integer,
        synopsis: String,
        ted_wisdom: String,
        title: String,
        writer: String,
        biscuits_with_boss_moment: String | nil,
        memorable_moments: ^(Believe::Internal::Type::ArrayOf[String]) | nil,
        us_viewers_millions: Float | nil,
        viewer_rating: Float | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @believe.episodes.list

    assert_pattern do
      response => Believe::Internal::SkipLimitPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Believe::Episode
    end

    assert_pattern do
      row => {
        id: String,
        air_date: Date,
        character_focus: ^(Believe::Internal::Type::ArrayOf[String]),
        director: String,
        episode_number: Integer,
        main_theme: String,
        runtime_minutes: Integer,
        season: Integer,
        synopsis: String,
        ted_wisdom: String,
        title: String,
        writer: String,
        biscuits_with_boss_moment: String | nil,
        memorable_moments: ^(Believe::Internal::Type::ArrayOf[String]) | nil,
        us_viewers_millions: Float | nil,
        viewer_rating: Float | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @believe.episodes.delete("episode_id")

    assert_pattern do
      response => nil
    end
  end

  def test_get_wisdom
    skip("Mock server tests are disabled")

    response = @believe.episodes.get_wisdom("episode_id")

    assert_pattern do
      response => ^(Believe::Internal::Type::HashOf[Believe::Internal::Type::Unknown])
    end
  end

  def test_list_by_season
    skip("Mock server tests are disabled")

    response = @believe.episodes.list_by_season(0)

    assert_pattern do
      response => Believe::Internal::SkipLimitPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Believe::Episode
    end

    assert_pattern do
      row => {
        id: String,
        air_date: Date,
        character_focus: ^(Believe::Internal::Type::ArrayOf[String]),
        director: String,
        episode_number: Integer,
        main_theme: String,
        runtime_minutes: Integer,
        season: Integer,
        synopsis: String,
        ted_wisdom: String,
        title: String,
        writer: String,
        biscuits_with_boss_moment: String | nil,
        memorable_moments: ^(Believe::Internal::Type::ArrayOf[String]) | nil,
        us_viewers_millions: Float | nil,
        viewer_rating: Float | nil
      }
    end
  end
end
