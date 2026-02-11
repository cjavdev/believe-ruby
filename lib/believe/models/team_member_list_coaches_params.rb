# frozen_string_literal: true

module Believe
  module Models
    # @see Believe::Resources::TeamMembers#list_coaches
    class TeamMemberListCoachesParams < Believe::Internal::Type::BaseModel
      extend Believe::Internal::Type::RequestParameters::Converter
      include Believe::Internal::Type::RequestParameters

      # @!attribute limit
      #   Maximum number of items to return (max: 100)
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute skip
      #   Number of items to skip (offset)
      #
      #   @return [Integer, nil]
      optional :skip, Integer

      # @!attribute specialty
      #   Filter by specialty
      #
      #   @return [Symbol, Believe::Models::CoachSpecialty, nil]
      optional :specialty, enum: -> { Believe::CoachSpecialty }, nil?: true

      # @!attribute team_id
      #   Filter by team ID
      #
      #   @return [String, nil]
      optional :team_id, String, nil?: true

      # @!method initialize(limit: nil, skip: nil, specialty: nil, team_id: nil, request_options: {})
      #   @param limit [Integer] Maximum number of items to return (max: 100)
      #
      #   @param skip [Integer] Number of items to skip (offset)
      #
      #   @param specialty [Symbol, Believe::Models::CoachSpecialty, nil] Filter by specialty
      #
      #   @param team_id [String, nil] Filter by team ID
      #
      #   @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
