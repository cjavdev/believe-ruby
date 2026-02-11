# frozen_string_literal: true

module Believe
  module Models
    # @see Believe::Resources::Matches#create
    class MatchCreateParams < Believe::Internal::Type::BaseModel
      extend Believe::Internal::Type::RequestParameters::Converter
      include Believe::Internal::Type::RequestParameters

      # @!attribute away_team_id
      #   Away team ID
      #
      #   @return [String]
      required :away_team_id, String

      # @!attribute date
      #   Match date and time
      #
      #   @return [Time]
      required :date, Time

      # @!attribute home_team_id
      #   Home team ID
      #
      #   @return [String]
      required :home_team_id, String

      # @!attribute match_type
      #   Type of match
      #
      #   @return [Symbol, Believe::Models::MatchType]
      required :match_type, enum: -> { Believe::MatchType }

      # @!attribute attendance
      #   Match attendance
      #
      #   @return [Integer, nil]
      optional :attendance, Integer, nil?: true

      # @!attribute away_score
      #   Away team score
      #
      #   @return [Integer, nil]
      optional :away_score, Integer

      # @!attribute episode_id
      #   Episode ID where this match is featured
      #
      #   @return [String, nil]
      optional :episode_id, String, nil?: true

      # @!attribute home_score
      #   Home team score
      #
      #   @return [Integer, nil]
      optional :home_score, Integer

      # @!attribute lesson_learned
      #   The life lesson learned from this match
      #
      #   @return [String, nil]
      optional :lesson_learned, String, nil?: true

      # @!attribute possession_percentage
      #   Home team possession percentage
      #
      #   @return [Float, nil]
      optional :possession_percentage, Float, nil?: true

      # @!attribute result
      #   Match result from home team perspective
      #
      #   @return [Symbol, Believe::Models::MatchResult, nil]
      optional :result, enum: -> { Believe::MatchResult }

      # @!attribute ted_halftime_speech
      #   Ted's inspirational halftime speech
      #
      #   @return [String, nil]
      optional :ted_halftime_speech, String, nil?: true

      # @!attribute ticket_revenue_gbp
      #   Total ticket revenue in GBP
      #
      #   @return [Float, String, nil]
      optional :ticket_revenue_gbp, union: -> { Believe::MatchCreateParams::TicketRevenueGbp }, nil?: true

      # @!attribute turning_points
      #   Key moments that changed the match
      #
      #   @return [Array<Believe::Models::TurningPoint>, nil]
      optional :turning_points, -> { Believe::Internal::Type::ArrayOf[Believe::TurningPoint] }

      # @!attribute weather_temp_celsius
      #   Temperature at kickoff in Celsius
      #
      #   @return [Float, nil]
      optional :weather_temp_celsius, Float, nil?: true

      # @!method initialize(away_team_id:, date:, home_team_id:, match_type:, attendance: nil, away_score: nil, episode_id: nil, home_score: nil, lesson_learned: nil, possession_percentage: nil, result: nil, ted_halftime_speech: nil, ticket_revenue_gbp: nil, turning_points: nil, weather_temp_celsius: nil, request_options: {})
      #   @param away_team_id [String] Away team ID
      #
      #   @param date [Time] Match date and time
      #
      #   @param home_team_id [String] Home team ID
      #
      #   @param match_type [Symbol, Believe::Models::MatchType] Type of match
      #
      #   @param attendance [Integer, nil] Match attendance
      #
      #   @param away_score [Integer] Away team score
      #
      #   @param episode_id [String, nil] Episode ID where this match is featured
      #
      #   @param home_score [Integer] Home team score
      #
      #   @param lesson_learned [String, nil] The life lesson learned from this match
      #
      #   @param possession_percentage [Float, nil] Home team possession percentage
      #
      #   @param result [Symbol, Believe::Models::MatchResult] Match result from home team perspective
      #
      #   @param ted_halftime_speech [String, nil] Ted's inspirational halftime speech
      #
      #   @param ticket_revenue_gbp [Float, String, nil] Total ticket revenue in GBP
      #
      #   @param turning_points [Array<Believe::Models::TurningPoint>] Key moments that changed the match
      #
      #   @param weather_temp_celsius [Float, nil] Temperature at kickoff in Celsius
      #
      #   @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}]

      # Total ticket revenue in GBP
      module TicketRevenueGbp
        extend Believe::Internal::Type::Union

        variant Float

        variant String

        # @!method self.variants
        #   @return [Array(Float, String)]
      end
    end
  end
end
