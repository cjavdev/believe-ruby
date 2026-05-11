# typed: strong

module Believe
  module Models
    class VersionRetrieveParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(::Believe::VersionRetrieveParams, ::Believe::Internal::AnyHash)
        end

      sig do
        params(request_options: ::Believe::RequestOptions::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(request_options: {})
      end

      sig { override.returns({ request_options: ::Believe::RequestOptions }) }
      def to_hash
      end
    end
  end
end
