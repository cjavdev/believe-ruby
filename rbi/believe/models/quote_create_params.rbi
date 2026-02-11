# typed: strong

module Believe
  module Models
    class QuoteCreateParams < Believe::Internal::Type::BaseModel
      extend Believe::Internal::Type::RequestParameters::Converter
      include Believe::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Believe::QuoteCreateParams, Believe::Internal::AnyHash)
        end

      # ID of the character who said it
      sig { returns(String) }
      attr_accessor :character_id

      # Context in which the quote was said
      sig { returns(String) }
      attr_accessor :context

      # Type of moment when the quote was said
      sig { returns(Believe::QuoteMoment::OrSymbol) }
      attr_accessor :moment_type

      # The quote text
      sig { returns(String) }
      attr_accessor :text

      # Primary theme of the quote
      sig { returns(Believe::QuoteTheme::OrSymbol) }
      attr_accessor :theme

      # Episode where the quote appears
      sig { returns(T.nilable(String)) }
      attr_accessor :episode_id

      # Whether this quote is humorous
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_funny

      sig { params(is_funny: T::Boolean).void }
      attr_writer :is_funny

      # Whether this quote is inspirational
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_inspirational

      sig { params(is_inspirational: T::Boolean).void }
      attr_writer :is_inspirational

      # Popularity/virality score (0-100)
      sig { returns(T.nilable(Float)) }
      attr_accessor :popularity_score

      # Additional themes
      sig { returns(T.nilable(T::Array[Believe::QuoteTheme::OrSymbol])) }
      attr_reader :secondary_themes

      sig do
        params(secondary_themes: T::Array[Believe::QuoteTheme::OrSymbol]).void
      end
      attr_writer :secondary_themes

      # Number of times shared on social media
      sig { returns(T.nilable(Integer)) }
      attr_accessor :times_shared

      sig do
        params(
          character_id: String,
          context: String,
          moment_type: Believe::QuoteMoment::OrSymbol,
          text: String,
          theme: Believe::QuoteTheme::OrSymbol,
          episode_id: T.nilable(String),
          is_funny: T::Boolean,
          is_inspirational: T::Boolean,
          popularity_score: T.nilable(Float),
          secondary_themes: T::Array[Believe::QuoteTheme::OrSymbol],
          times_shared: T.nilable(Integer),
          request_options: Believe::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # ID of the character who said it
        character_id:,
        # Context in which the quote was said
        context:,
        # Type of moment when the quote was said
        moment_type:,
        # The quote text
        text:,
        # Primary theme of the quote
        theme:,
        # Episode where the quote appears
        episode_id: nil,
        # Whether this quote is humorous
        is_funny: nil,
        # Whether this quote is inspirational
        is_inspirational: nil,
        # Popularity/virality score (0-100)
        popularity_score: nil,
        # Additional themes
        secondary_themes: nil,
        # Number of times shared on social media
        times_shared: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            character_id: String,
            context: String,
            moment_type: Believe::QuoteMoment::OrSymbol,
            text: String,
            theme: Believe::QuoteTheme::OrSymbol,
            episode_id: T.nilable(String),
            is_funny: T::Boolean,
            is_inspirational: T::Boolean,
            popularity_score: T.nilable(Float),
            secondary_themes: T::Array[Believe::QuoteTheme::OrSymbol],
            times_shared: T.nilable(Integer),
            request_options: Believe::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
