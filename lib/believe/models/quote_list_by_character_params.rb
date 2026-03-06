# frozen_string_literal: true

module Believe
  module Models
    # @see Believe::Resources::Quotes#list_by_character
    class QuoteListByCharacterParams < Believe::Internal::Type::BaseModel
      extend Believe::Internal::Type::RequestParameters::Converter
      include Believe::Internal::Type::RequestParameters

      # @!attribute character_id
      #
      #   @return [String]
      required :character_id, String

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

      # @!method initialize(character_id:, limit: nil, skip: nil, request_options: {})
      #   @param character_id [String]
      #
      #   @param limit [Integer] Maximum number of items to return (max: 100)
      #
      #   @param skip [Integer] Number of items to skip (offset)
      #
      #   @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
