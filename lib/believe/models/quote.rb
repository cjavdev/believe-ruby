# frozen_string_literal: true

module Believe
  module Models
    # @see ::Believe::Resources::Quotes#create
    class Quote < ::Believe::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier
      #
      #   @return [String]
      required :id, String

      # @!attribute character_id
      #   ID of the character who said it
      #
      #   @return [String]
      required :character_id, String

      # @!attribute context
      #   Context in which the quote was said
      #
      #   @return [String]
      required :context, String

      # @!attribute moment_type
      #   Type of moment when the quote was said
      #
      #   @return [Symbol, ::Believe::Models::QuoteMoment]
      required :moment_type, enum: -> { ::Believe::QuoteMoment }

      # @!attribute text
      #   The quote text
      #
      #   @return [String]
      required :text, String

      # @!attribute theme
      #   Primary theme of the quote
      #
      #   @return [Symbol, ::Believe::Models::QuoteTheme]
      required :theme, enum: -> { ::Believe::QuoteTheme }

      # @!attribute episode_id
      #   Episode where the quote appears
      #
      #   @return [String, nil]
      optional :episode_id, String, nil?: true

      # @!attribute is_funny
      #   Whether this quote is humorous
      #
      #   @return [Boolean, nil]
      optional :is_funny, ::Believe::Internal::Type::Boolean

      # @!attribute is_inspirational
      #   Whether this quote is inspirational
      #
      #   @return [Boolean, nil]
      optional :is_inspirational, ::Believe::Internal::Type::Boolean

      # @!attribute popularity_score
      #   Popularity/virality score (0-100)
      #
      #   @return [Float, nil]
      optional :popularity_score, Float, nil?: true

      # @!attribute secondary_themes
      #   Additional themes
      #
      #   @return [Array<Symbol, ::Believe::Models::QuoteTheme>, nil]
      optional :secondary_themes, -> { ::Believe::Internal::Type::ArrayOf[enum: ::Believe::QuoteTheme] }

      # @!attribute times_shared
      #   Number of times shared on social media
      #
      #   @return [Integer, nil]
      optional :times_shared, Integer, nil?: true

      # @!method initialize(id:, character_id:, context:, moment_type:, text:, theme:, episode_id: nil, is_funny: nil, is_inspirational: nil, popularity_score: nil, secondary_themes: nil, times_shared: nil)
      #   Full quote model with ID.
      #
      #   @param id [String] Unique identifier
      #
      #   @param character_id [String] ID of the character who said it
      #
      #   @param context [String] Context in which the quote was said
      #
      #   @param moment_type [Symbol, ::Believe::Models::QuoteMoment] Type of moment when the quote was said
      #
      #   @param text [String] The quote text
      #
      #   @param theme [Symbol, ::Believe::Models::QuoteTheme] Primary theme of the quote
      #
      #   @param episode_id [String, nil] Episode where the quote appears
      #
      #   @param is_funny [Boolean] Whether this quote is humorous
      #
      #   @param is_inspirational [Boolean] Whether this quote is inspirational
      #
      #   @param popularity_score [Float, nil] Popularity/virality score (0-100)
      #
      #   @param secondary_themes [Array<Symbol, ::Believe::Models::QuoteTheme>] Additional themes
      #
      #   @param times_shared [Integer, nil] Number of times shared on social media
    end
  end
end
