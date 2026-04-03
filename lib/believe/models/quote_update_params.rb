# frozen_string_literal: true

module Believe
  module Models
    # @see ::Believe::Resources::Quotes#update
    class QuoteUpdateParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

      # @!attribute quote_id
      #
      #   @return [String]
      required :quote_id, String

      # @!attribute character_id
      #
      #   @return [String, nil]
      optional :character_id, String, nil?: true

      # @!attribute context
      #
      #   @return [String, nil]
      optional :context, String, nil?: true

      # @!attribute episode_id
      #
      #   @return [String, nil]
      optional :episode_id, String, nil?: true

      # @!attribute is_funny
      #
      #   @return [Boolean, nil]
      optional :is_funny, ::Believe::Internal::Type::Boolean, nil?: true

      # @!attribute is_inspirational
      #
      #   @return [Boolean, nil]
      optional :is_inspirational, ::Believe::Internal::Type::Boolean, nil?: true

      # @!attribute moment_type
      #   Types of moments when quotes occur.
      #
      #   @return [Symbol, ::Believe::Models::QuoteMoment, nil]
      optional :moment_type, enum: -> { ::Believe::QuoteMoment }, nil?: true

      # @!attribute popularity_score
      #
      #   @return [Float, nil]
      optional :popularity_score, Float, nil?: true

      # @!attribute secondary_themes
      #
      #   @return [Array<Symbol, ::Believe::Models::QuoteTheme>, nil]
      optional :secondary_themes,
               -> { ::Believe::Internal::Type::ArrayOf[enum: ::Believe::QuoteTheme] },
               nil?: true

      # @!attribute text
      #
      #   @return [String, nil]
      optional :text, String, nil?: true

      # @!attribute theme
      #   Themes that quotes can be categorized under.
      #
      #   @return [Symbol, ::Believe::Models::QuoteTheme, nil]
      optional :theme, enum: -> { ::Believe::QuoteTheme }, nil?: true

      # @!attribute times_shared
      #
      #   @return [Integer, nil]
      optional :times_shared, Integer, nil?: true

      # @!method initialize(quote_id:, character_id: nil, context: nil, episode_id: nil, is_funny: nil, is_inspirational: nil, moment_type: nil, popularity_score: nil, secondary_themes: nil, text: nil, theme: nil, times_shared: nil, request_options: {})
      #   @param quote_id [String]
      #
      #   @param character_id [String, nil]
      #
      #   @param context [String, nil]
      #
      #   @param episode_id [String, nil]
      #
      #   @param is_funny [Boolean, nil]
      #
      #   @param is_inspirational [Boolean, nil]
      #
      #   @param moment_type [Symbol, ::Believe::Models::QuoteMoment, nil] Types of moments when quotes occur.
      #
      #   @param popularity_score [Float, nil]
      #
      #   @param secondary_themes [Array<Symbol, ::Believe::Models::QuoteTheme>, nil]
      #
      #   @param text [String, nil]
      #
      #   @param theme [Symbol, ::Believe::Models::QuoteTheme, nil] Themes that quotes can be categorized under.
      #
      #   @param times_shared [Integer, nil]
      #
      #   @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
