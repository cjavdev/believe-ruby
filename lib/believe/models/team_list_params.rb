# frozen_string_literal: true

module Believe
  module Models
    # @see Believe::Resources::Teams#list
    class TeamListParams < Believe::Internal::Type::BaseModel
      extend Believe::Internal::Type::RequestParameters::Converter
      include Believe::Internal::Type::RequestParameters

      # @!attribute league
      #   Filter by league
      #
      #   @return [Symbol, Believe::Models::League, nil]
      optional :league, enum: -> { Believe::League }, nil?: true

      # @!attribute limit
      #   Maximum number of items to return (max: 100)
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute min_culture_score
      #   Minimum culture score
      #
      #   @return [Integer, nil]
      optional :min_culture_score, Integer, nil?: true

      # @!attribute skip
      #   Number of items to skip (offset)
      #
      #   @return [Integer, nil]
      optional :skip, Integer

      # @!method initialize(league: nil, limit: nil, min_culture_score: nil, skip: nil, request_options: {})
      #   @param league [Symbol, Believe::Models::League, nil] Filter by league
      #
      #   @param limit [Integer] Maximum number of items to return (max: 100)
      #
      #   @param min_culture_score [Integer, nil] Minimum culture score
      #
      #   @param skip [Integer] Number of items to skip (offset)
      #
      #   @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
