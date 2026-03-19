# typed: strong

module Believe
  module Models
    class WebhookDeleteParams < Believe::Internal::Type::BaseModel
      extend Believe::Internal::Type::RequestParameters::Converter
      include Believe::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Believe::WebhookDeleteParams, Believe::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :webhook_id

      sig do
        params(
          webhook_id: String,
          request_options: Believe::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(webhook_id:, request_options: {})
      end

      sig do
        override.returns(
          { webhook_id: String, request_options: Believe::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
