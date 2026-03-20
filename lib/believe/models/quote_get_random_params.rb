# frozen_string_literal: true

module Believe
  module Models
    # @see ::Believe::Resources::Quotes#get_random
    class QuoteGetRandomParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

      # @!attribute character_id
      #   Filter by character
      #
      #   @return [String, nil]
      optional :character_id, String, nil?: true

      # @!attribute inspirational
      #   Filter inspirational quotes
      #
      #   @return [Boolean, nil]
      optional :inspirational, ::Believe::Internal::Type::Boolean, nil?: true

      # @!attribute theme
      #   Filter by theme
      #
      #   @return [Symbol, ::Believe::Models::QuoteTheme, nil]
      optional :theme, enum: -> { ::Believe::QuoteTheme }, nil?: true

      # @!method initialize(character_id: nil, inspirational: nil, theme: nil, request_options: {})
      #   @param character_id [String, nil] Filter by character
      #
      #   @param inspirational [Boolean, nil] Filter inspirational quotes
      #
      #   @param theme [Symbol, ::Believe::Models::QuoteTheme, nil] Filter by theme
      #
      #   @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
