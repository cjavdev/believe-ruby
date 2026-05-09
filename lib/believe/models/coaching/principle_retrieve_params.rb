# frozen_string_literal: true

module Believe
  module Models
    module Coaching
      # @see ::Believe::Resources::Coaching::Principles#retrieve
      class PrincipleRetrieveParams < ::Believe::Internal::Type::BaseModel
        extend ::Believe::Internal::Type::RequestParameters::Converter
        include ::Believe::Internal::Type::RequestParameters

        # @!attribute principle_id
        #
        #   @return [String]
        required :principle_id, String

        # @!method initialize(principle_id:, request_options: {})
        #   @param principle_id [String]
        #   @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
