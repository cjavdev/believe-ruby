# frozen_string_literal: true

module Believe
  module Models
    # @see Believe::Resources::Episodes#list
    class EpisodeListParams < Believe::Internal::Type::BaseModel
      extend Believe::Internal::Type::RequestParameters::Converter
      include Believe::Internal::Type::RequestParameters

      # @!attribute character_focus
      #   Filter by character focus (character ID)
      #
      #   @return [String, nil]
      optional :character_focus, String, nil?: true

      # @!attribute limit
      #   Maximum number of items to return (max: 100)
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute season
      #   Filter by season
      #
      #   @return [Integer, nil]
      optional :season, Integer, nil?: true

      # @!attribute skip
      #   Number of items to skip (offset)
      #
      #   @return [Integer, nil]
      optional :skip, Integer

      # @!method initialize(character_focus: nil, limit: nil, season: nil, skip: nil, request_options: {})
      #   @param character_focus [String, nil] Filter by character focus (character ID)
      #
      #   @param limit [Integer] Maximum number of items to return (max: 100)
      #
      #   @param season [Integer, nil] Filter by season
      #
      #   @param skip [Integer] Number of items to skip (offset)
      #
      #   @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
