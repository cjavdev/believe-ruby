# frozen_string_literal: true

module Believe
  module Models
    # @see Believe::Resources::Quotes#retrieve
    class QuoteRetrieveParams < Believe::Internal::Type::BaseModel
      extend Believe::Internal::Type::RequestParameters::Converter
      include Believe::Internal::Type::RequestParameters

      # @!attribute quote_id
      #
      #   @return [String]
      required :quote_id, String

      # @!method initialize(quote_id:, request_options: {})
      #   @param quote_id [String]
      #   @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
