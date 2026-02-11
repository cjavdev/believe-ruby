# typed: strong

module Believe
  module Models
    class QuoteGetRandomParams < Believe::Internal::Type::BaseModel
      extend Believe::Internal::Type::RequestParameters::Converter
      include Believe::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Believe::QuoteGetRandomParams, Believe::Internal::AnyHash)
        end

      # Filter by character
      sig { returns(T.nilable(String)) }
      attr_accessor :character_id

      # Filter inspirational quotes
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :inspirational

      # Filter by theme
      sig { returns(T.nilable(Believe::QuoteTheme::OrSymbol)) }
      attr_accessor :theme

      sig do
        params(
          character_id: T.nilable(String),
          inspirational: T.nilable(T::Boolean),
          theme: T.nilable(Believe::QuoteTheme::OrSymbol),
          request_options: Believe::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter by character
        character_id: nil,
        # Filter inspirational quotes
        inspirational: nil,
        # Filter by theme
        theme: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            character_id: T.nilable(String),
            inspirational: T.nilable(T::Boolean),
            theme: T.nilable(Believe::QuoteTheme::OrSymbol),
            request_options: Believe::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
