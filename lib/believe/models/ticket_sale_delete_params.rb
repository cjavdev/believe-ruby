# frozen_string_literal: true

module Believe
  module Models
    # @see ::Believe::Resources::TicketSales#delete
    class TicketSaleDeleteParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

      # @!attribute ticket_sale_id
      #
      #   @return [String]
      required :ticket_sale_id, String

      # @!method initialize(ticket_sale_id:, request_options: {})
      #   @param ticket_sale_id [String]
      #   @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
