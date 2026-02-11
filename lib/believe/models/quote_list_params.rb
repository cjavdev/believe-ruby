# frozen_string_literal: true

module Believe
  module Models
    # @see Believe::Resources::Quotes#list
    class QuoteListParams < Believe::Internal::Type::BaseModel
      extend Believe::Internal::Type::RequestParameters::Converter
      include Believe::Internal::Type::RequestParameters

      # @!attribute character_id
      #   Filter by character
      #
      #   @return [String, nil]
      optional :character_id, String, nil?: true

      # @!attribute funny
      #   Filter funny quotes
      #
      #   @return [Boolean, nil]
      optional :funny, Believe::Internal::Type::Boolean, nil?: true

      # @!attribute inspirational
      #   Filter inspirational quotes
      #
      #   @return [Boolean, nil]
      optional :inspirational, Believe::Internal::Type::Boolean, nil?: true

      # @!attribute limit
      #   Maximum number of items to return (max: 100)
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute moment_type
      #   Filter by moment type
      #
      #   @return [Symbol, Believe::Models::QuoteMoment, nil]
      optional :moment_type, enum: -> { Believe::QuoteMoment }, nil?: true

      # @!attribute skip
      #   Number of items to skip (offset)
      #
      #   @return [Integer, nil]
      optional :skip, Integer

      # @!attribute theme
      #   Filter by theme
      #
      #   @return [Symbol, Believe::Models::QuoteTheme, nil]
      optional :theme, enum: -> { Believe::QuoteTheme }, nil?: true

      # @!method initialize(character_id: nil, funny: nil, inspirational: nil, limit: nil, moment_type: nil, skip: nil, theme: nil, request_options: {})
      #   @param character_id [String, nil] Filter by character
      #
      #   @param funny [Boolean, nil] Filter funny quotes
      #
      #   @param inspirational [Boolean, nil] Filter inspirational quotes
      #
      #   @param limit [Integer] Maximum number of items to return (max: 100)
      #
      #   @param moment_type [Symbol, Believe::Models::QuoteMoment, nil] Filter by moment type
      #
      #   @param skip [Integer] Number of items to skip (offset)
      #
      #   @param theme [Symbol, Believe::Models::QuoteTheme, nil] Filter by theme
      #
      #   @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
