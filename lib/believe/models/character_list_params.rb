# frozen_string_literal: true

module Believe
  module Models
    # @see Believe::Resources::Characters#list
    class CharacterListParams < Believe::Internal::Type::BaseModel
      extend Believe::Internal::Type::RequestParameters::Converter
      include Believe::Internal::Type::RequestParameters

      # @!attribute limit
      #   Maximum number of items to return (max: 100)
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute min_optimism
      #   Minimum optimism score
      #
      #   @return [Integer, nil]
      optional :min_optimism, Integer, nil?: true

      # @!attribute role
      #   Filter by role
      #
      #   @return [Symbol, Believe::Models::CharacterRole, nil]
      optional :role, enum: -> { Believe::CharacterRole }, nil?: true

      # @!attribute skip
      #   Number of items to skip (offset)
      #
      #   @return [Integer, nil]
      optional :skip, Integer

      # @!attribute team_id
      #   Filter by team ID
      #
      #   @return [String, nil]
      optional :team_id, String, nil?: true

      # @!method initialize(limit: nil, min_optimism: nil, role: nil, skip: nil, team_id: nil, request_options: {})
      #   @param limit [Integer] Maximum number of items to return (max: 100)
      #
      #   @param min_optimism [Integer, nil] Minimum optimism score
      #
      #   @param role [Symbol, Believe::Models::CharacterRole, nil] Filter by role
      #
      #   @param skip [Integer] Number of items to skip (offset)
      #
      #   @param team_id [String, nil] Filter by team ID
      #
      #   @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
