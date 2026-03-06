# frozen_string_literal: true

module Believe
  module Models
    # @see Believe::Resources::Characters#retrieve
    class CharacterRetrieveParams < Believe::Internal::Type::BaseModel
      extend Believe::Internal::Type::RequestParameters::Converter
      include Believe::Internal::Type::RequestParameters

      # @!attribute character_id
      #
      #   @return [String]
      required :character_id, String

      # @!method initialize(character_id:, request_options: {})
      #   @param character_id [String]
      #   @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
