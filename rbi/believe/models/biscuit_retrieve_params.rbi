# typed: strong

module Believe
  module Models
    class BiscuitRetrieveParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(::Believe::BiscuitRetrieveParams, ::Believe::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :biscuit_id

      sig { params(biscuit_id: String, request_options: ::Believe::RequestOptions::OrHash).returns(T.attached_class) }
      def self.new(biscuit_id:, request_options: {}); end

      sig { override.returns({biscuit_id: String, request_options: ::Believe::RequestOptions}) }
      def to_hash; end
    end
  end
end
