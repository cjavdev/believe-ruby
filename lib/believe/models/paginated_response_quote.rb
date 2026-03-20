# frozen_string_literal: true

module Believe
  module Models
    class PaginatedResponseQuote < ::Believe::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<::Believe::Models::Quote>]
      required :data, -> { ::Believe::Internal::Type::ArrayOf[::Believe::Quote] }

      # @!attribute limit
      #
      #   @return [Integer]
      required :limit, Integer

      # @!attribute skip
      #
      #   @return [Integer]
      required :skip, Integer

      # @!attribute total
      #
      #   @return [Integer]
      required :total, Integer

      response_only do
        # @!attribute has_more
        #   Whether there are more items after this page.
        #
        #   @return [Boolean]
        required :has_more, ::Believe::Internal::Type::Boolean

        # @!attribute page
        #   Current page number (1-indexed, for display purposes).
        #
        #   @return [Integer]
        required :page, Integer

        # @!attribute pages
        #   Total number of pages.
        #
        #   @return [Integer]
        required :pages, Integer
      end

      # @!method initialize(data:, has_more:, limit:, page:, pages:, skip:, total:)
      #   @param data [Array<::Believe::Models::Quote>]
      #
      #   @param has_more [Boolean] Whether there are more items after this page.
      #
      #   @param limit [Integer]
      #
      #   @param page [Integer] Current page number (1-indexed, for display purposes).
      #
      #   @param pages [Integer] Total number of pages.
      #
      #   @param skip [Integer]
      #
      #   @param total [Integer]
    end
  end
end
