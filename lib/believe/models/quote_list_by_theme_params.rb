# frozen_string_literal: true

module Believe
  module Models
    # @see Believe::Resources::Quotes#list_by_theme
    class QuoteListByThemeParams < Believe::Internal::Type::BaseModel
      extend Believe::Internal::Type::RequestParameters::Converter
      include Believe::Internal::Type::RequestParameters

      # @!attribute theme
      #   Themes that quotes can be categorized under.
      #
      #   @return [Symbol, Believe::Models::QuoteTheme]
      required :theme, enum: -> { Believe::QuoteTheme }

      # @!attribute limit
      #   Maximum number of items to return (max: 100)
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute skip
      #   Number of items to skip (offset)
      #
      #   @return [Integer, nil]
      optional :skip, Integer

      # @!method initialize(theme:, limit: nil, skip: nil, request_options: {})
      #   @param theme [Symbol, Believe::Models::QuoteTheme] Themes that quotes can be categorized under.
      #
      #   @param limit [Integer] Maximum number of items to return (max: 100)
      #
      #   @param skip [Integer] Number of items to skip (offset)
      #
      #   @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
