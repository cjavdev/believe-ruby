# typed: strong

module Believe
  module Models
    class TeamMemberRetrieveParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(::Believe::TeamMemberRetrieveParams, ::Believe::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :member_id

      sig { params(member_id: String, request_options: ::Believe::RequestOptions::OrHash).returns(T.attached_class) }
      def self.new(member_id:, request_options: {}); end

      sig { override.returns({member_id: String, request_options: ::Believe::RequestOptions}) }
      def to_hash; end
    end
  end
end
