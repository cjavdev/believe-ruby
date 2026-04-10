# typed: strong

module Believe
  module Models
    class EpisodeGetWisdomParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(::Believe::EpisodeGetWisdomParams, ::Believe::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :episode_id

      sig { params(episode_id: String, request_options: ::Believe::RequestOptions::OrHash).returns(T.attached_class) }
      def self.new(episode_id:, request_options: {}); end

      sig { override.returns({episode_id: String, request_options: ::Believe::RequestOptions}) }
      def to_hash; end
    end
  end
end
