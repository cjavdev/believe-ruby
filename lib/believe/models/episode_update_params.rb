# frozen_string_literal: true

module Believe
  module Models
    # @see ::Believe::Resources::Episodes#update
    class EpisodeUpdateParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

      # @!attribute episode_id
      #
      #   @return [String]
      required :episode_id, String

      # @!attribute air_date
      #
      #   @return [Date, nil]
      optional :air_date, Date, nil?: true

      # @!attribute biscuits_with_boss_moment
      #
      #   @return [String, nil]
      optional :biscuits_with_boss_moment, String, nil?: true

      # @!attribute character_focus
      #
      #   @return [Array<String>, nil]
      optional :character_focus, ::Believe::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute director
      #
      #   @return [String, nil]
      optional :director, String, nil?: true

      # @!attribute episode_number
      #
      #   @return [Integer, nil]
      optional :episode_number, Integer, nil?: true

      # @!attribute main_theme
      #
      #   @return [String, nil]
      optional :main_theme, String, nil?: true

      # @!attribute memorable_moments
      #
      #   @return [Array<String>, nil]
      optional :memorable_moments, ::Believe::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute runtime_minutes
      #
      #   @return [Integer, nil]
      optional :runtime_minutes, Integer, nil?: true

      # @!attribute season
      #
      #   @return [Integer, nil]
      optional :season, Integer, nil?: true

      # @!attribute synopsis
      #
      #   @return [String, nil]
      optional :synopsis, String, nil?: true

      # @!attribute ted_wisdom
      #
      #   @return [String, nil]
      optional :ted_wisdom, String, nil?: true

      # @!attribute title
      #
      #   @return [String, nil]
      optional :title, String, nil?: true

      # @!attribute us_viewers_millions
      #
      #   @return [Float, nil]
      optional :us_viewers_millions, Float, nil?: true

      # @!attribute viewer_rating
      #
      #   @return [Float, nil]
      optional :viewer_rating, Float, nil?: true

      # @!attribute writer
      #
      #   @return [String, nil]
      optional :writer, String, nil?: true

      # @!method initialize(episode_id:, air_date: nil, biscuits_with_boss_moment: nil, character_focus: nil, director: nil, episode_number: nil, main_theme: nil, memorable_moments: nil, runtime_minutes: nil, season: nil, synopsis: nil, ted_wisdom: nil, title: nil, us_viewers_millions: nil, viewer_rating: nil, writer: nil, request_options: {})
      #   @param episode_id [String]
      #   @param air_date [Date, nil]
      #   @param biscuits_with_boss_moment [String, nil]
      #   @param character_focus [Array<String>, nil]
      #   @param director [String, nil]
      #   @param episode_number [Integer, nil]
      #   @param main_theme [String, nil]
      #   @param memorable_moments [Array<String>, nil]
      #   @param runtime_minutes [Integer, nil]
      #   @param season [Integer, nil]
      #   @param synopsis [String, nil]
      #   @param ted_wisdom [String, nil]
      #   @param title [String, nil]
      #   @param us_viewers_millions [Float, nil]
      #   @param viewer_rating [Float, nil]
      #   @param writer [String, nil]
      #   @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
