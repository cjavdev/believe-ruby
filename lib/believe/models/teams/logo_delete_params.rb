# frozen_string_literal: true

module Believe
  module Models
    module Teams
      # @see Believe::Resources::Teams::Logo#delete
      class LogoDeleteParams < Believe::Internal::Type::BaseModel
        extend Believe::Internal::Type::RequestParameters::Converter
        include Believe::Internal::Type::RequestParameters

        # @!attribute team_id
        #
        #   @return [String]
        required :team_id, String

        # @!attribute file_id
        #
        #   @return [String]
        required :file_id, String

        # @!method initialize(team_id:, file_id:, request_options: {})
        #   @param team_id [String]
        #   @param file_id [String]
        #   @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
