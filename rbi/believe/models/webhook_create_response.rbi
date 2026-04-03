# typed: strong

module Believe
  module Models
    class WebhookCreateResponse < ::Believe::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(::Believe::Models::WebhookCreateResponse, ::Believe::Internal::AnyHash) }

      # The registered webhook details
      sig { returns(::Believe::RegisteredWebhook) }
      attr_reader :webhook

      sig { params(webhook: ::Believe::RegisteredWebhook::OrHash).void }
      attr_writer :webhook

      # Status message
      sig { returns(T.nilable(String)) }
      attr_reader :message

      sig { params(message: String).void }
      attr_writer :message

      # Ted's reaction
      sig { returns(T.nilable(String)) }
      attr_reader :ted_says

      sig { params(ted_says: String).void }
      attr_writer :ted_says

      # Response after registering a webhook.
      sig do
        params(webhook: ::Believe::RegisteredWebhook::OrHash, message: String, ted_says: String)
          .returns(T.attached_class)
      end
      def self.new(
        # The registered webhook details
      webhook:,
        # Status message
      message: nil,
        # Ted's reaction
      ted_says: nil
      ); end

      sig { override.returns({webhook: ::Believe::RegisteredWebhook, message: String, ted_says: String}) }
      def to_hash; end
    end
  end
end
