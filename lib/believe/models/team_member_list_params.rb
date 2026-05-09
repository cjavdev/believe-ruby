# frozen_string_literal: true

module Believe
  module Models
    # @see ::Believe::Resources::TeamMembers#list
    class TeamMemberListParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

      # @!attribute limit
      #   Maximum number of items to return (max: 100)
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute member_type
      #   Filter by member type
      #
      #   @return [Symbol, ::Believe::Models::TeamMemberListParams::MemberType, nil]
      optional :member_type, enum: -> { ::Believe::TeamMemberListParams::MemberType }, nil?: true

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

      # @!method initialize(limit: nil, member_type: nil, skip: nil, team_id: nil, request_options: {})
      #   @param limit [Integer] Maximum number of items to return (max: 100)
      #
      #   @param member_type [Symbol, ::Believe::Models::TeamMemberListParams::MemberType, nil] Filter by member type
      #
      #   @param skip [Integer] Number of items to skip (offset)
      #
      #   @param team_id [String, nil] Filter by team ID
      #
      #   @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}]

      # Filter by member type
      module MemberType
        extend ::Believe::Internal::Type::Enum

        PLAYER = :player
        COACH = :coach
        MEDICAL_STAFF = :medical_staff
        EQUIPMENT_MANAGER = :equipment_manager

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
