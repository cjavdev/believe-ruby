# typed: strong

module Believe
  module Models
    module Coaching
      class PrincipleRetrieveParams < ::Believe::Internal::Type::BaseModel
        extend ::Believe::Internal::Type::RequestParameters::Converter
        include ::Believe::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              ::Believe::Coaching::PrincipleRetrieveParams,
              ::Believe::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :principle_id

        sig do
          params(
            principle_id: String,
            request_options: ::Believe::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(principle_id:, request_options: {})
        end

        sig do
          override.returns(
            { principle_id: String, request_options: ::Believe::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
