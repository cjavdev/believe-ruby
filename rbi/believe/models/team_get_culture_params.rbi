# typed: strong

module Believe
  module Models
    class TeamGetCultureParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(::Believe::TeamGetCultureParams, ::Believe::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :team_id

      sig { params(team_id: String, request_options: ::Believe::RequestOptions::OrHash).returns(T.attached_class) }
      def self.new(team_id:, request_options: {}); end

      sig { override.returns({team_id: String, request_options: ::Believe::RequestOptions}) }
      def to_hash; end
    end
  end
end
