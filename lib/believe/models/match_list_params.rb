# frozen_string_literal: true

module Believe
  module Models
    # @see Believe::Resources::Matches#list
    class MatchListParams < Believe::Internal::Type::BaseModel
      extend Believe::Internal::Type::RequestParameters::Converter
      include Believe::Internal::Type::RequestParameters

      # @!attribute limit
      #   Maximum number of items to return (max: 100)
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute match_type
      #   Filter by match type
      #
      #   @return [Symbol, Believe::Models::MatchType, nil]
      optional :match_type, enum: -> { Believe::MatchType }, nil?: true

      # @!attribute result
      #   Filter by result
      #
      #   @return [Symbol, Believe::Models::MatchResult, nil]
      optional :result, enum: -> { Believe::MatchResult }, nil?: true

      # @!attribute skip
      #   Number of items to skip (offset)
      #
      #   @return [Integer, nil]
      optional :skip, Integer

      # @!attribute team_id
      #   Filter by team (home or away)
      #
      #   @return [String, nil]
      optional :team_id, String, nil?: true

      # @!method initialize(limit: nil, match_type: nil, result: nil, skip: nil, team_id: nil, request_options: {})
      #   @param limit [Integer] Maximum number of items to return (max: 100)
      #
      #   @param match_type [Symbol, Believe::Models::MatchType, nil] Filter by match type
      #
      #   @param result [Symbol, Believe::Models::MatchResult, nil] Filter by result
      #
      #   @param skip [Integer] Number of items to skip (offset)
      #
      #   @param team_id [String, nil] Filter by team (home or away)
      #
      #   @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
