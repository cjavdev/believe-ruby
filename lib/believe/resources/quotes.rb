# frozen_string_literal: true

module Believe
  module Resources
    # Memorable quotes from the show
    class Quotes
      # Add a new memorable quote to the collection.
      #
      # @overload create(character_id:, context:, moment_type:, text:, theme:, episode_id: nil, is_funny: nil, is_inspirational: nil, popularity_score: nil, secondary_themes: nil, times_shared: nil, request_options: {})
      #
      # @param character_id [String] ID of the character who said it
      #
      # @param context [String] Context in which the quote was said
      #
      # @param moment_type [Symbol, ::Believe::Models::QuoteMoment] Type of moment when the quote was said
      #
      # @param text [String] The quote text
      #
      # @param theme [Symbol, ::Believe::Models::QuoteTheme] Primary theme of the quote
      #
      # @param episode_id [String, nil] Episode where the quote appears
      #
      # @param is_funny [Boolean] Whether this quote is humorous
      #
      # @param is_inspirational [Boolean] Whether this quote is inspirational
      #
      # @param popularity_score [Float, nil] Popularity/virality score (0-100)
      #
      # @param secondary_themes [Array<Symbol, ::Believe::Models::QuoteTheme>] Additional themes
      #
      # @param times_shared [Integer, nil] Number of times shared on social media
      #
      # @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [::Believe::Models::Quote]
      #
      # @see ::Believe::Models::QuoteCreateParams
      def create(params)
        parsed, options = ::Believe::QuoteCreateParams.dump_request(params)
        @client.request(method: :post, path: "quotes", body: parsed, model: ::Believe::Quote, options: options)
      end

      # Retrieve a specific quote by its ID.
      #
      # @overload retrieve(quote_id, request_options: {})
      #
      # @param quote_id [String]
      # @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [::Believe::Models::Quote]
      #
      # @see ::Believe::Models::QuoteRetrieveParams
      def retrieve(quote_id, params = {})
        @client.request(
          method: :get,
          path: ["quotes/%1$s", quote_id],
          model: ::Believe::Quote,
          options: params[:request_options]
        )
      end

      # Update specific fields of an existing quote.
      #
      # @overload update(quote_id, character_id: nil, context: nil, episode_id: nil, is_funny: nil, is_inspirational: nil, moment_type: nil, popularity_score: nil, secondary_themes: nil, text: nil, theme: nil, times_shared: nil, request_options: {})
      #
      # @param quote_id [String]
      #
      # @param character_id [String, nil]
      #
      # @param context [String, nil]
      #
      # @param episode_id [String, nil]
      #
      # @param is_funny [Boolean, nil]
      #
      # @param is_inspirational [Boolean, nil]
      #
      # @param moment_type [Symbol, ::Believe::Models::QuoteMoment, nil] Types of moments when quotes occur.
      #
      # @param popularity_score [Float, nil]
      #
      # @param secondary_themes [Array<Symbol, ::Believe::Models::QuoteTheme>, nil]
      #
      # @param text [String, nil]
      #
      # @param theme [Symbol, ::Believe::Models::QuoteTheme, nil] Themes that quotes can be categorized under.
      #
      # @param times_shared [Integer, nil]
      #
      # @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [::Believe::Models::Quote]
      #
      # @see ::Believe::Models::QuoteUpdateParams
      def update(quote_id, params = {})
        parsed, options = ::Believe::QuoteUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["quotes/%1$s", quote_id],
          body: parsed,
          model: ::Believe::Quote,
          options: options
        )
      end

      # Get a paginated list of all memorable Ted Lasso quotes with optional filtering.
      #
      # @overload list(character_id: nil, funny: nil, inspirational: nil, limit: nil, moment_type: nil, skip: nil, theme: nil, request_options: {})
      #
      # @param character_id [String, nil] Filter by character
      #
      # @param funny [Boolean, nil] Filter funny quotes
      #
      # @param inspirational [Boolean, nil] Filter inspirational quotes
      #
      # @param limit [Integer] Maximum number of items to return (max: 100)
      #
      # @param moment_type [Symbol, ::Believe::Models::QuoteMoment, nil] Filter by moment type
      #
      # @param skip [Integer] Number of items to skip (offset)
      #
      # @param theme [Symbol, ::Believe::Models::QuoteTheme, nil] Filter by theme
      #
      # @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [::Believe::Internal::SkipLimitPage<::Believe::Models::Quote>]
      #
      # @see ::Believe::Models::QuoteListParams
      def list(params = {})
        parsed, options = ::Believe::QuoteListParams.dump_request(params)
        query = ::Believe::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "quotes",
          query: query,
          page: ::Believe::Internal::SkipLimitPage,
          model: ::Believe::Quote,
          options: options
        )
      end

      # Remove a quote from the collection.
      #
      # @overload delete(quote_id, request_options: {})
      #
      # @param quote_id [String]
      # @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see ::Believe::Models::QuoteDeleteParams
      def delete(quote_id, params = {})
        @client.request(
          method: :delete,
          path: ["quotes/%1$s", quote_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Get a random Ted Lasso quote, optionally filtered.
      #
      # @overload get_random(character_id: nil, inspirational: nil, theme: nil, request_options: {})
      #
      # @param character_id [String, nil] Filter by character
      #
      # @param inspirational [Boolean, nil] Filter inspirational quotes
      #
      # @param theme [Symbol, ::Believe::Models::QuoteTheme, nil] Filter by theme
      #
      # @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [::Believe::Models::Quote]
      #
      # @see ::Believe::Models::QuoteGetRandomParams
      def get_random(params = {})
        parsed, options = ::Believe::QuoteGetRandomParams.dump_request(params)
        query = ::Believe::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "quotes/random",
          query: query,
          model: ::Believe::Quote,
          options: options
        )
      end

      # Get a paginated list of quotes from a specific character.
      #
      # @overload list_by_character(character_id, limit: nil, skip: nil, request_options: {})
      #
      # @param character_id [String]
      #
      # @param limit [Integer] Maximum number of items to return (max: 100)
      #
      # @param skip [Integer] Number of items to skip (offset)
      #
      # @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [::Believe::Internal::SkipLimitPage<::Believe::Models::Quote>]
      #
      # @see ::Believe::Models::QuoteListByCharacterParams
      def list_by_character(character_id, params = {})
        parsed, options = ::Believe::QuoteListByCharacterParams.dump_request(params)
        query = ::Believe::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["quotes/characters/%1$s", character_id],
          query: query,
          page: ::Believe::Internal::SkipLimitPage,
          model: ::Believe::Quote,
          options: options
        )
      end

      # Get a paginated list of quotes related to a specific theme.
      #
      # @overload list_by_theme(theme, limit: nil, skip: nil, request_options: {})
      #
      # @param theme [Symbol, ::Believe::Models::QuoteTheme] Themes that quotes can be categorized under.
      #
      # @param limit [Integer] Maximum number of items to return (max: 100)
      #
      # @param skip [Integer] Number of items to skip (offset)
      #
      # @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [::Believe::Internal::SkipLimitPage<::Believe::Models::Quote>]
      #
      # @see ::Believe::Models::QuoteListByThemeParams
      def list_by_theme(theme, params = {})
        parsed, options = ::Believe::QuoteListByThemeParams.dump_request(params)
        query = ::Believe::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["quotes/themes/%1$s", theme],
          query: query,
          page: ::Believe::Internal::SkipLimitPage,
          model: ::Believe::Quote,
          options: options
        )
      end

      # @api private
      #
      # @param client [::Believe::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
