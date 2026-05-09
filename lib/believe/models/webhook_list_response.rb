# frozen_string_literal: true

module Believe
  module Models
    # @type [::Believe::Internal::Type::Converter]
    WebhookListResponse = ::Believe::Internal::Type::ArrayOf[-> { ::Believe::RegisteredWebhook }]
  end
end
