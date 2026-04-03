# frozen_string_literal: true

module Believe
  module Models
    # @see ::Believe::Resources::TeamMembers#list_players
    class TeamMemberListPlayersParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

      # @!attribute limit
      #   Maximum number of items to return (max: 100)
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute position
      #   Filter by position
      #
      #   @return [Symbol, ::Believe::Models::Position, nil]
      optional :position, enum: -> { ::Believe::Position }, nil?: true

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

      # @!method initialize(limit: nil, position: nil, skip: nil, team_id: nil, request_options: {})
      #   @param limit [Integer] Maximum number of items to return (max: 100)
      #
      #   @param position [Symbol, ::Believe::Models::Position, nil] Filter by position
      #
      #   @param skip [Integer] Number of items to skip (offset)
      #
      #   @param team_id [String, nil] Filter by team ID
      #
      #   @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
