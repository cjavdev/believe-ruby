# frozen_string_literal: true

module Believe
  module Models
    # @see ::Believe::Resources::Teams#get_culture
    class TeamGetCultureParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

      # @!attribute team_id
      #
      #   @return [String]
      required :team_id, String

      # @!method initialize(team_id:, request_options: {})
      #   @param team_id [String]
      #   @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
