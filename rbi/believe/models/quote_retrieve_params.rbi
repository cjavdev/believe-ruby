# typed: strong

module Believe
  module Models
    class QuoteRetrieveParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(::Believe::QuoteRetrieveParams, ::Believe::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :quote_id

      sig do
        params(
          quote_id: String,
          request_options: ::Believe::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(quote_id:, request_options: {})
      end

      sig do
        override.returns(
          { quote_id: String, request_options: ::Believe::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
