# frozen_string_literal: true

module Believe
  module Models
    module Client
      # @see Believe::Resources::Client::TicketSales#update
      class TicketSaleUpdateParams < Believe::Internal::Type::BaseModel
        extend Believe::Internal::Type::RequestParameters::Converter
        include Believe::Internal::Type::RequestParameters

        # @!attribute ticket_sale_id
        #
        #   @return [String]
        required :ticket_sale_id, String

        # @!attribute buyer_email
        #
        #   @return [String, nil]
        optional :buyer_email, String, nil?: true

        # @!attribute buyer_name
        #
        #   @return [String, nil]
        optional :buyer_name, String, nil?: true

        # @!attribute coupon_code
        #
        #   @return [String, nil]
        optional :coupon_code, String, nil?: true

        # @!attribute currency
        #
        #   @return [String, nil]
        optional :currency, String, nil?: true

        # @!attribute discount
        #
        #   @return [String, nil]
        optional :discount, String, nil?: true

        # @!attribute match_id
        #
        #   @return [String, nil]
        optional :match_id, String, nil?: true

        # @!attribute purchase_method
        #   How the ticket was purchased.
        #
        #   @return [Symbol, Believe::Models::Client::TicketSaleUpdateParams::PurchaseMethod, nil]
        optional :purchase_method,
                 enum: -> { Believe::Models::Client::TicketSaleUpdateParams::PurchaseMethod },
                 nil?: true

        # @!attribute quantity
        #
        #   @return [Integer, nil]
        optional :quantity, Integer, nil?: true

        # @!attribute subtotal
        #
        #   @return [String, nil]
        optional :subtotal, String, nil?: true

        # @!attribute tax
        #
        #   @return [String, nil]
        optional :tax, String, nil?: true

        # @!attribute total
        #
        #   @return [String, nil]
        optional :total, String, nil?: true

        # @!attribute unit_price
        #
        #   @return [String, nil]
        optional :unit_price, String, nil?: true

        # @!method initialize(ticket_sale_id:, buyer_email: nil, buyer_name: nil, coupon_code: nil, currency: nil, discount: nil, match_id: nil, purchase_method: nil, quantity: nil, subtotal: nil, tax: nil, total: nil, unit_price: nil, request_options: {})
        #   @param ticket_sale_id [String]
        #
        #   @param buyer_email [String, nil]
        #
        #   @param buyer_name [String, nil]
        #
        #   @param coupon_code [String, nil]
        #
        #   @param currency [String, nil]
        #
        #   @param discount [String, nil]
        #
        #   @param match_id [String, nil]
        #
        #   @param purchase_method [Symbol, Believe::Models::Client::TicketSaleUpdateParams::PurchaseMethod, nil] How the ticket was purchased.
        #
        #   @param quantity [Integer, nil]
        #
        #   @param subtotal [String, nil]
        #
        #   @param tax [String, nil]
        #
        #   @param total [String, nil]
        #
        #   @param unit_price [String, nil]
        #
        #   @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}]

        # How the ticket was purchased.
        module PurchaseMethod
          extend Believe::Internal::Type::Enum

          ONLINE = :online
          BOX_OFFICE = :box_office
          WILL_CALL = :will_call
          PHONE = :phone

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
