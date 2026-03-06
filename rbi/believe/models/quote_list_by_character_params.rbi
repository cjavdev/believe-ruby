# typed: strong

module Believe
  module Models
    class QuoteListByCharacterParams < Believe::Internal::Type::BaseModel
      extend Believe::Internal::Type::RequestParameters::Converter
      include Believe::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Believe::QuoteListByCharacterParams, Believe::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :character_id

      # Maximum number of items to return (max: 100)
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Number of items to skip (offset)
      sig { returns(T.nilable(Integer)) }
      attr_reader :skip

      sig { params(skip: Integer).void }
      attr_writer :skip

      sig do
        params(
          character_id: String,
          limit: Integer,
          skip: Integer,
          request_options: Believe::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        character_id:,
        # Maximum number of items to return (max: 100)
        limit: nil,
        # Number of items to skip (offset)
        skip: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            character_id: String,
            limit: Integer,
            skip: Integer,
            request_options: Believe::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
