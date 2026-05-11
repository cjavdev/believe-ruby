# frozen_string_literal: true

module Believe
  module Models
    # @see ::Believe::Resources::PepTalk#retrieve
    class PepTalkRetrieveParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

      # @!attribute stream
      #   If true, returns SSE stream instead of full response
      #
      #   @return [Boolean, nil]
      optional :stream, ::Believe::Internal::Type::Boolean

      # @!method initialize(stream: nil, request_options: {})
      #   @param stream [Boolean] If true, returns SSE stream instead of full response
      #
      #   @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
