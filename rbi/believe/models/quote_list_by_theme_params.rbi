# typed: strong

module Believe
  module Models
    class QuoteListByThemeParams < Believe::Internal::Type::BaseModel
      extend Believe::Internal::Type::RequestParameters::Converter
      include Believe::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Believe::QuoteListByThemeParams, Believe::Internal::AnyHash)
        end

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
          limit: Integer,
          skip: Integer,
          request_options: Believe::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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
