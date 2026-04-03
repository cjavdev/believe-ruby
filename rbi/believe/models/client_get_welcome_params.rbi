# typed: strong

module Believe
  module Models
    class ClientGetWelcomeParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(::Believe::ClientGetWelcomeParams, ::Believe::Internal::AnyHash) }

      sig { params(request_options: ::Believe::RequestOptions::OrHash).returns(T.attached_class) }
      def self.new(request_options: {}); end

      sig { override.returns({request_options: ::Believe::RequestOptions}) }
      def to_hash; end
    end
  end
end
