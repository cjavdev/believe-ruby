# typed: strong

module Believe
  module Models
    module Coaching
      class PrincipleRetrieveParams < ::Believe::Internal::Type::BaseModel
        extend ::Believe::Internal::Type::RequestParameters::Converter
        include ::Believe::Internal::Type::RequestParameters

        OrHash =
          T.type_alias { T.any(::Believe::Coaching::PrincipleRetrieveParams, ::Believe::Internal::AnyHash) }

        sig { returns(String) }
        attr_accessor :principle_id

        sig { params(principle_id: String, request_options: ::Believe::RequestOptions::OrHash).returns(T.attached_class) }
        def self.new(principle_id:, request_options: {}); end

        sig { override.returns({principle_id: String, request_options: ::Believe::RequestOptions}) }
        def to_hash; end
      end
    end
  end
end
