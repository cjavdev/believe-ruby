# frozen_string_literal: true

module Believe
  module Models
    # @see ::Believe::Resources::Webhooks#create
    class WebhookCreateResponse < ::Believe::Internal::Type::BaseModel
      # @!attribute webhook
      #   The registered webhook details
      #
      #   @return [::Believe::Models::RegisteredWebhook]
      required :webhook, -> { ::Believe::RegisteredWebhook }

      # @!attribute message
      #   Status message
      #
      #   @return [String, nil]
      optional :message, String

      # @!attribute ted_says
      #   Ted's reaction
      #
      #   @return [String, nil]
      optional :ted_says, String

      # @!method initialize(webhook:, message: nil, ted_says: nil)
      #   Response after registering a webhook.
      #
      #   @param webhook [::Believe::Models::RegisteredWebhook] The registered webhook details
      #
      #   @param message [String] Status message
      #
      #   @param ted_says [String] Ted's reaction
    end
  end
end
