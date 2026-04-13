# typed: strong

module Believe
  module Models
    class MatchGetLessonParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(::Believe::MatchGetLessonParams, ::Believe::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :match_id

      sig { params(match_id: String, request_options: ::Believe::RequestOptions::OrHash).returns(T.attached_class) }
      def self.new(match_id:, request_options: {}); end

      sig { override.returns({match_id: String, request_options: ::Believe::RequestOptions}) }
      def to_hash; end
    end
  end
end
