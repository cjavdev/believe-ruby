# frozen_string_literal: true

module Believe
  module Models
    # @see ::Believe::Resources::Matches#update
    class MatchUpdateParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

      # @!attribute match_id
      #
      #   @return [String]
      required :match_id, String

      # @!attribute attendance
      #
      #   @return [Integer, nil]
      optional :attendance, Integer, nil?: true

      # @!attribute away_score
      #
      #   @return [Integer, nil]
      optional :away_score, Integer, nil?: true

      # @!attribute away_team_id
      #
      #   @return [String, nil]
      optional :away_team_id, String, nil?: true

      # @!attribute date
      #
      #   @return [Time, nil]
      optional :date, Time, nil?: true

      # @!attribute episode_id
      #
      #   @return [String, nil]
      optional :episode_id, String, nil?: true

      # @!attribute home_score
      #
      #   @return [Integer, nil]
      optional :home_score, Integer, nil?: true

      # @!attribute home_team_id
      #
      #   @return [String, nil]
      optional :home_team_id, String, nil?: true

      # @!attribute lesson_learned
      #
      #   @return [String, nil]
      optional :lesson_learned, String, nil?: true

      # @!attribute match_type
      #   Types of matches.
      #
      #   @return [Symbol, ::Believe::Models::MatchType, nil]
      optional :match_type, enum: -> { ::Believe::MatchType }, nil?: true

      # @!attribute possession_percentage
      #
      #   @return [Float, nil]
      optional :possession_percentage, Float, nil?: true

      # @!attribute result
      #   Match result types.
      #
      #   @return [Symbol, ::Believe::Models::MatchResult, nil]
      optional :result, enum: -> { ::Believe::MatchResult }, nil?: true

      # @!attribute ted_halftime_speech
      #
      #   @return [String, nil]
      optional :ted_halftime_speech, String, nil?: true

      # @!attribute ticket_revenue_gbp
      #
      #   @return [Float, String, nil]
      optional :ticket_revenue_gbp, union: -> { ::Believe::MatchUpdateParams::TicketRevenueGbp }, nil?: true

      # @!attribute turning_points
      #
      #   @return [Array<::Believe::Models::TurningPoint>, nil]
      optional :turning_points, -> { ::Believe::Internal::Type::ArrayOf[::Believe::TurningPoint] }, nil?: true

      # @!attribute weather_temp_celsius
      #
      #   @return [Float, nil]
      optional :weather_temp_celsius, Float, nil?: true

      # @!method initialize(match_id:, attendance: nil, away_score: nil, away_team_id: nil, date: nil, episode_id: nil, home_score: nil, home_team_id: nil, lesson_learned: nil, match_type: nil, possession_percentage: nil, result: nil, ted_halftime_speech: nil, ticket_revenue_gbp: nil, turning_points: nil, weather_temp_celsius: nil, request_options: {})
      #   @param match_id [String]
      #
      #   @param attendance [Integer, nil]
      #
      #   @param away_score [Integer, nil]
      #
      #   @param away_team_id [String, nil]
      #
      #   @param date [Time, nil]
      #
      #   @param episode_id [String, nil]
      #
      #   @param home_score [Integer, nil]
      #
      #   @param home_team_id [String, nil]
      #
      #   @param lesson_learned [String, nil]
      #
      #   @param match_type [Symbol, ::Believe::Models::MatchType, nil] Types of matches.
      #
      #   @param possession_percentage [Float, nil]
      #
      #   @param result [Symbol, ::Believe::Models::MatchResult, nil] Match result types.
      #
      #   @param ted_halftime_speech [String, nil]
      #
      #   @param ticket_revenue_gbp [Float, String, nil]
      #
      #   @param turning_points [Array<::Believe::Models::TurningPoint>, nil]
      #
      #   @param weather_temp_celsius [Float, nil]
      #
      #   @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}]

      module TicketRevenueGbp
        extend ::Believe::Internal::Type::Union

        variant Float

        variant String

        # @!method self.variants
        #   @return [Array(Float, String)]
      end
    end
  end
end
