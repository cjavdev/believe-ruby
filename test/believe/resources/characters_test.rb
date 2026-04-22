# frozen_string_literal: true

require_relative "../test_helper"

class Believe::Test::Resources::CharactersTest < Believe::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @believe.characters.create(
        background: "Legendary midfielder for Chelsea and AFC Richmond, now assistant coach. Known for his gruff exterior hiding a heart of gold.",
        emotional_stats: {curiosity: 40, empathy: 85, optimism: 45, resilience: 95, vulnerability: 60},
        name: "Roy Kent",
        personality_traits: ["intense", "loyal", "secretly caring", "profane"],
        role: :coach
      )

    assert_pattern do
      response => ::Believe::Character
    end

    assert_pattern do
      response => {
        id: String,
        background: String,
        emotional_stats: ::Believe::EmotionalStats,
        name: String,
        personality_traits: ^(::Believe::Internal::Type::ArrayOf[String]),
        role: ::Believe::CharacterRole,
        date_of_birth: Date | nil,
        email: String | nil,
        growth_arcs: ^(::Believe::Internal::Type::ArrayOf[::Believe::GrowthArc]) | nil,
        height_meters: Float | nil,
        profile_image_url: String | nil,
        salary_gbp: String | nil,
        signature_quotes: ^(::Believe::Internal::Type::ArrayOf[String]) | nil,
        team_id: String | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @believe.characters.retrieve("character_id")

    assert_pattern do
      response => ::Believe::Character
    end

    assert_pattern do
      response => {
        id: String,
        background: String,
        emotional_stats: ::Believe::EmotionalStats,
        name: String,
        personality_traits: ^(::Believe::Internal::Type::ArrayOf[String]),
        role: ::Believe::CharacterRole,
        date_of_birth: Date | nil,
        email: String | nil,
        growth_arcs: ^(::Believe::Internal::Type::ArrayOf[::Believe::GrowthArc]) | nil,
        height_meters: Float | nil,
        profile_image_url: String | nil,
        salary_gbp: String | nil,
        signature_quotes: ^(::Believe::Internal::Type::ArrayOf[String]) | nil,
        team_id: String | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @believe.characters.update("character_id")

    assert_pattern do
      response => ::Believe::Character
    end

    assert_pattern do
      response => {
        id: String,
        background: String,
        emotional_stats: ::Believe::EmotionalStats,
        name: String,
        personality_traits: ^(::Believe::Internal::Type::ArrayOf[String]),
        role: ::Believe::CharacterRole,
        date_of_birth: Date | nil,
        email: String | nil,
        growth_arcs: ^(::Believe::Internal::Type::ArrayOf[::Believe::GrowthArc]) | nil,
        height_meters: Float | nil,
        profile_image_url: String | nil,
        salary_gbp: String | nil,
        signature_quotes: ^(::Believe::Internal::Type::ArrayOf[String]) | nil,
        team_id: String | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @believe.characters.list

    assert_pattern do
      response => ::Believe::Internal::SkipLimitPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ::Believe::Character
    end

    assert_pattern do
      row => {
        id: String,
        background: String,
        emotional_stats: ::Believe::EmotionalStats,
        name: String,
        personality_traits: ^(::Believe::Internal::Type::ArrayOf[String]),
        role: ::Believe::CharacterRole,
        date_of_birth: Date | nil,
        email: String | nil,
        growth_arcs: ^(::Believe::Internal::Type::ArrayOf[::Believe::GrowthArc]) | nil,
        height_meters: Float | nil,
        profile_image_url: String | nil,
        salary_gbp: String | nil,
        signature_quotes: ^(::Believe::Internal::Type::ArrayOf[String]) | nil,
        team_id: String | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @believe.characters.delete("character_id")

    assert_pattern do
      response => nil
    end
  end

  def test_get_quotes
    skip("Mock server tests are disabled")

    response = @believe.characters.get_quotes("character_id")

    assert_pattern do
      response => ^(::Believe::Internal::Type::ArrayOf[String])
    end
  end
end
