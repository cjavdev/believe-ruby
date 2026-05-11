# frozen_string_literal: true

module Believe
  module Models
    # @see ::Believe::Resources::TeamMembers#list_staff
    class TeamMemberListStaffParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

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

      # @!attribute team_id
      #   Filter by team ID
      #
      #   @return [String, nil]
      optional :team_id, String, nil?: true

      # @!method initialize(limit: nil, skip: nil, team_id: nil, request_options: {})
      #   @param limit [Integer] Maximum number of items to return (max: 100)
      #
      #   @param skip [Integer] Number of items to skip (offset)
      #
      #   @param team_id [String, nil] Filter by team ID
      #
      #   @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
