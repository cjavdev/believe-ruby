# typed: strong

module Believe
  module Models
    class QuoteListParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(::Believe::QuoteListParams, ::Believe::Internal::AnyHash) }

      # Filter by character
      sig { returns(T.nilable(String)) }
      attr_accessor :character_id

      # Filter funny quotes
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :funny

      # Filter inspirational quotes
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :inspirational

      # Maximum number of items to return (max: 100)
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Filter by moment type
      sig { returns(T.nilable(::Believe::QuoteMoment::OrSymbol)) }
      attr_accessor :moment_type

      # Number of items to skip (offset)
      sig { returns(T.nilable(Integer)) }
      attr_reader :skip

      sig { params(skip: Integer).void }
      attr_writer :skip

      # Filter by theme
      sig { returns(T.nilable(::Believe::QuoteTheme::OrSymbol)) }
      attr_accessor :theme

      sig do
        params(
          character_id: T.nilable(String),
          funny: T.nilable(T::Boolean),
          inspirational: T.nilable(T::Boolean),
          limit: Integer,
          moment_type: T.nilable(::Believe::QuoteMoment::OrSymbol),
          skip: Integer,
          theme: T.nilable(::Believe::QuoteTheme::OrSymbol),
          request_options: ::Believe::RequestOptions::OrHash
        )
          .returns(T.attached_class)
      end
      def self.new(
        # Filter by character
      character_id: nil,
        # Filter funny quotes
      funny: nil,
        # Filter inspirational quotes
      inspirational: nil,
        # Maximum number of items to return (max: 100)
      limit: nil,
        # Filter by moment type
      moment_type: nil,
        # Number of items to skip (offset)
      skip: nil,
        # Filter by theme
      theme: nil,
        request_options: {}
      ); end

      sig do
        override
          .returns(
            {
              character_id: T.nilable(String),
              funny: T.nilable(T::Boolean),
              inspirational: T.nilable(T::Boolean),
              limit: Integer,
              moment_type: T.nilable(::Believe::QuoteMoment::OrSymbol),
              skip: Integer,
              theme: T.nilable(::Believe::QuoteTheme::OrSymbol),
              request_options: ::Believe::RequestOptions
            }
          )
      end
      def to_hash; end
    end
  end
end
