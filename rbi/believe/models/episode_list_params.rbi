# typed: strong

module Believe
  module Models
    class EpisodeListParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(::Believe::EpisodeListParams, ::Believe::Internal::AnyHash)
        end

      # Filter by character focus (character ID)
      sig { returns(T.nilable(String)) }
      attr_accessor :character_focus

      # Maximum number of items to return (max: 100)
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Filter by season
      sig { returns(T.nilable(Integer)) }
      attr_accessor :season

      # Number of items to skip (offset)
      sig { returns(T.nilable(Integer)) }
      attr_reader :skip

      sig { params(skip: Integer).void }
      attr_writer :skip

      sig do
        params(
          character_focus: T.nilable(String),
          limit: Integer,
          season: T.nilable(Integer),
          skip: Integer,
          request_options: ::Believe::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter by character focus (character ID)
        character_focus: nil,
        # Maximum number of items to return (max: 100)
        limit: nil,
        # Filter by season
        season: nil,
        # Number of items to skip (offset)
        skip: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            character_focus: T.nilable(String),
            limit: Integer,
            season: T.nilable(Integer),
            skip: Integer,
            request_options: ::Believe::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
