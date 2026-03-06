# frozen_string_literal: true

module Believe
  module Models
    # @see Believe::Resources::Webhooks#retrieve
    class WebhookRetrieveParams < Believe::Internal::Type::BaseModel
      extend Believe::Internal::Type::RequestParameters::Converter
      include Believe::Internal::Type::RequestParameters

      # @!attribute webhook_id
      #
      #   @return [String]
      required :webhook_id, String

      # @!method initialize(webhook_id:, request_options: {})
      #   @param webhook_id [String]
      #   @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
