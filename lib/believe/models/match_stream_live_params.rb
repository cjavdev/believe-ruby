# frozen_string_literal: true

module Believe
  module Models
    # @see ::Believe::Resources::Matches#stream_live
    class MatchStreamLiveParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

      # @!attribute away_team
      #   Away team name
      #
      #   @return [String, nil]
      optional :away_team, String

      # @!attribute excitement_level
      #   How eventful the match should be (1=boring, 10=chaos)
      #
      #   @return [Integer, nil]
      optional :excitement_level, Integer

      # @!attribute home_team
      #   Home team name
      #
      #   @return [String, nil]
      optional :home_team, String

      # @!attribute speed
      #   Simulation speed multiplier (1.0 = real-time)
      #
      #   @return [Float, nil]
      optional :speed, Float

      # @!method initialize(away_team: nil, excitement_level: nil, home_team: nil, speed: nil, request_options: {})
      #   @param away_team [String] Away team name
      #
      #   @param excitement_level [Integer] How eventful the match should be (1=boring, 10=chaos)
      #
      #   @param home_team [String] Home team name
      #
      #   @param speed [Float] Simulation speed multiplier (1.0 = real-time)
      #
      #   @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
