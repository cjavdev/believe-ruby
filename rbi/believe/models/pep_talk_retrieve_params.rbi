# typed: strong

module Believe
  module Models
    class PepTalkRetrieveParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(::Believe::PepTalkRetrieveParams, ::Believe::Internal::AnyHash) }

      # If true, returns SSE stream instead of full response
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :stream

      sig { params(stream: T::Boolean).void }
      attr_writer :stream

      sig { params(stream: T::Boolean, request_options: ::Believe::RequestOptions::OrHash).returns(T.attached_class) }
      def self.new(
        # If true, returns SSE stream instead of full response
      stream: nil,
        request_options: {}
      ); end

      sig { override.returns({stream: T::Boolean, request_options: ::Believe::RequestOptions}) }
      def to_hash; end
    end
  end
end
