# frozen_string_literal: true

module Believe
  module Models
    # @see Believe::Resources::Episodes#create
    class Episode < Believe::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier (format: s##e##)
      #
      #   @return [String]
      required :id, String

      # @!attribute air_date
      #   Original air date
      #
      #   @return [Date]
      required :air_date, Date

      # @!attribute character_focus
      #   Characters with significant development
      #
      #   @return [Array<String>]
      required :character_focus, Believe::Internal::Type::ArrayOf[String]

      # @!attribute director
      #   Episode director
      #
      #   @return [String]
      required :director, String

      # @!attribute episode_number
      #   Episode number within season
      #
      #   @return [Integer]
      required :episode_number, Integer

      # @!attribute main_theme
      #   Central theme of the episode
      #
      #   @return [String]
      required :main_theme, String

      # @!attribute runtime_minutes
      #   Episode runtime in minutes
      #
      #   @return [Integer]
      required :runtime_minutes, Integer

      # @!attribute season
      #   Season number
      #
      #   @return [Integer]
      required :season, Integer

      # @!attribute synopsis
      #   Brief plot synopsis
      #
      #   @return [String]
      required :synopsis, String

      # @!attribute ted_wisdom
      #   Key piece of Ted wisdom from the episode
      #
      #   @return [String]
      required :ted_wisdom, String

      # @!attribute title
      #   Episode title
      #
      #   @return [String]
      required :title, String

      # @!attribute writer
      #   Episode writer(s)
      #
      #   @return [String]
      required :writer, String

      # @!attribute biscuits_with_boss_moment
      #   Notable biscuits with the boss scene
      #
      #   @return [String, nil]
      optional :biscuits_with_boss_moment, String, nil?: true

      # @!attribute memorable_moments
      #   Standout moments from the episode
      #
      #   @return [Array<String>, nil]
      optional :memorable_moments, Believe::Internal::Type::ArrayOf[String]

      # @!attribute us_viewers_millions
      #   US viewership in millions
      #
      #   @return [Float, nil]
      optional :us_viewers_millions, Float, nil?: true

      # @!attribute viewer_rating
      #   Viewer rating out of 10
      #
      #   @return [Float, nil]
      optional :viewer_rating, Float, nil?: true

      # @!method initialize(id:, air_date:, character_focus:, director:, episode_number:, main_theme:, runtime_minutes:, season:, synopsis:, ted_wisdom:, title:, writer:, biscuits_with_boss_moment: nil, memorable_moments: nil, us_viewers_millions: nil, viewer_rating: nil)
      #   Full episode model with ID.
      #
      #   @param id [String] Unique identifier (format: s##e##)
      #
      #   @param air_date [Date] Original air date
      #
      #   @param character_focus [Array<String>] Characters with significant development
      #
      #   @param director [String] Episode director
      #
      #   @param episode_number [Integer] Episode number within season
      #
      #   @param main_theme [String] Central theme of the episode
      #
      #   @param runtime_minutes [Integer] Episode runtime in minutes
      #
      #   @param season [Integer] Season number
      #
      #   @param synopsis [String] Brief plot synopsis
      #
      #   @param ted_wisdom [String] Key piece of Ted wisdom from the episode
      #
      #   @param title [String] Episode title
      #
      #   @param writer [String] Episode writer(s)
      #
      #   @param biscuits_with_boss_moment [String, nil] Notable biscuits with the boss scene
      #
      #   @param memorable_moments [Array<String>] Standout moments from the episode
      #
      #   @param us_viewers_millions [Float, nil] US viewership in millions
      #
      #   @param viewer_rating [Float, nil] Viewer rating out of 10
    end
  end
end
