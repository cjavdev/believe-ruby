# frozen_string_literal: true

module Believe
  module Models
    # @see Believe::Resources::TeamMembers#retrieve
    class TeamMemberRetrieveParams < Believe::Internal::Type::BaseModel
      extend Believe::Internal::Type::RequestParameters::Converter
      include Believe::Internal::Type::RequestParameters

      # @!attribute member_id
      #
      #   @return [String]
      required :member_id, String

      # @!method initialize(member_id:, request_options: {})
      #   @param member_id [String]
      #   @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
