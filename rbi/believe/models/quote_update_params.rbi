# typed: strong

module Believe
  module Models
    class QuoteUpdateParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(::Believe::QuoteUpdateParams, ::Believe::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :quote_id

      sig { returns(T.nilable(String)) }
      attr_accessor :character_id

      sig { returns(T.nilable(String)) }
      attr_accessor :context

      sig { returns(T.nilable(String)) }
      attr_accessor :episode_id

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :is_funny

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :is_inspirational

      # Types of moments when quotes occur.
      sig { returns(T.nilable(::Believe::QuoteMoment::OrSymbol)) }
      attr_accessor :moment_type

      sig { returns(T.nilable(Float)) }
      attr_accessor :popularity_score

      sig { returns(T.nilable(T::Array[::Believe::QuoteTheme::OrSymbol])) }
      attr_accessor :secondary_themes

      sig { returns(T.nilable(String)) }
      attr_accessor :text

      # Themes that quotes can be categorized under.
      sig { returns(T.nilable(::Believe::QuoteTheme::OrSymbol)) }
      attr_accessor :theme

      sig { returns(T.nilable(Integer)) }
      attr_accessor :times_shared

      sig do
        params(
          quote_id: String,
          character_id: T.nilable(String),
          context: T.nilable(String),
          episode_id: T.nilable(String),
          is_funny: T.nilable(T::Boolean),
          is_inspirational: T.nilable(T::Boolean),
          moment_type: T.nilable(::Believe::QuoteMoment::OrSymbol),
          popularity_score: T.nilable(Float),
          secondary_themes:
            T.nilable(T::Array[::Believe::QuoteTheme::OrSymbol]),
          text: T.nilable(String),
          theme: T.nilable(::Believe::QuoteTheme::OrSymbol),
          times_shared: T.nilable(Integer),
          request_options: ::Believe::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        quote_id:,
        character_id: nil,
        context: nil,
        episode_id: nil,
        is_funny: nil,
        is_inspirational: nil,
        # Types of moments when quotes occur.
        moment_type: nil,
        popularity_score: nil,
        secondary_themes: nil,
        text: nil,
        # Themes that quotes can be categorized under.
        theme: nil,
        times_shared: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            quote_id: String,
            character_id: T.nilable(String),
            context: T.nilable(String),
            episode_id: T.nilable(String),
            is_funny: T.nilable(T::Boolean),
            is_inspirational: T.nilable(T::Boolean),
            moment_type: T.nilable(::Believe::QuoteMoment::OrSymbol),
            popularity_score: T.nilable(Float),
            secondary_themes:
              T.nilable(T::Array[::Believe::QuoteTheme::OrSymbol]),
            text: T.nilable(String),
            theme: T.nilable(::Believe::QuoteTheme::OrSymbol),
            times_shared: T.nilable(Integer),
            request_options: ::Believe::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
