# typed: strong

module Believe
  module Resources
    class Quotes
      # Add a new memorable quote to the collection.
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
        ).returns(Believe::Quote)
      end
      def create(
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

      # Retrieve a specific quote by its ID.
      sig do
        params(
          quote_id: String,
          request_options: Believe::RequestOptions::OrHash
        ).returns(Believe::Quote)
      end
      def retrieve(quote_id, request_options: {})
      end

      # Update specific fields of an existing quote.
      sig do
        params(
          quote_id: String,
          character_id: T.nilable(String),
          context: T.nilable(String),
          episode_id: T.nilable(String),
          is_funny: T.nilable(T::Boolean),
          is_inspirational: T.nilable(T::Boolean),
          moment_type: T.nilable(Believe::QuoteMoment::OrSymbol),
          popularity_score: T.nilable(Float),
          secondary_themes: T.nilable(T::Array[Believe::QuoteTheme::OrSymbol]),
          text: T.nilable(String),
          theme: T.nilable(Believe::QuoteTheme::OrSymbol),
          times_shared: T.nilable(Integer),
          request_options: Believe::RequestOptions::OrHash
        ).returns(Believe::Quote)
      end
      def update(
        quote_id,
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

      # Get a paginated list of all memorable Ted Lasso quotes with optional filtering.
      sig do
        params(
          character_id: T.nilable(String),
          funny: T.nilable(T::Boolean),
          inspirational: T.nilable(T::Boolean),
          limit: Integer,
          moment_type: T.nilable(Believe::QuoteMoment::OrSymbol),
          skip: Integer,
          theme: T.nilable(Believe::QuoteTheme::OrSymbol),
          request_options: Believe::RequestOptions::OrHash
        ).returns(Believe::Internal::SkipLimitPage[Believe::Quote])
      end
      def list(
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
      )
      end

      # Remove a quote from the collection.
      sig do
        params(
          quote_id: String,
          request_options: Believe::RequestOptions::OrHash
        ).void
      end
      def delete(quote_id, request_options: {})
      end

      # Get a random Ted Lasso quote, optionally filtered.
      sig do
        params(
          character_id: T.nilable(String),
          inspirational: T.nilable(T::Boolean),
          theme: T.nilable(Believe::QuoteTheme::OrSymbol),
          request_options: Believe::RequestOptions::OrHash
        ).returns(Believe::Quote)
      end
      def get_random(
        # Filter by character
        character_id: nil,
        # Filter inspirational quotes
        inspirational: nil,
        # Filter by theme
        theme: nil,
        request_options: {}
      )
      end

      # Get a paginated list of quotes from a specific character.
      sig do
        params(
          character_id: String,
          limit: Integer,
          skip: Integer,
          request_options: Believe::RequestOptions::OrHash
        ).returns(Believe::Internal::SkipLimitPage[Believe::Quote])
      end
      def list_by_character(
        character_id,
        # Maximum number of items to return (max: 100)
        limit: nil,
        # Number of items to skip (offset)
        skip: nil,
        request_options: {}
      )
      end

      # Get a paginated list of quotes related to a specific theme.
      sig do
        params(
          theme: Believe::QuoteTheme::OrSymbol,
          limit: Integer,
          skip: Integer,
          request_options: Believe::RequestOptions::OrHash
        ).returns(Believe::Internal::SkipLimitPage[Believe::Quote])
      end
      def list_by_theme(
        # Themes that quotes can be categorized under.
        theme,
        # Maximum number of items to return (max: 100)
        limit: nil,
        # Number of items to skip (offset)
        skip: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Believe::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
