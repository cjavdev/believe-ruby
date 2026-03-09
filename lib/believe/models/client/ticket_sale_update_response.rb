# frozen_string_literal: true

module Believe
  module Models
    module Client
      # @see Believe::Resources::Client::TicketSales#update
      class TicketSaleUpdateResponse < Believe::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier
        #
        #   @return [String]
        required :id, String

        # @!attribute buyer_name
        #   Name of the ticket buyer
        #
        #   @return [String]
        required :buyer_name, String

        # @!attribute currency
        #   Currency code (GBP, USD, or EUR)
        #
        #   @return [String]
        required :currency, String

        # @!attribute discount
        #   Discount amount applied from coupon
        #
        #   @return [String]
        required :discount, String

        # @!attribute match_id
        #   ID of the match
        #
        #   @return [String]
        required :match_id, String

        # @!attribute purchase_method
        #   How the ticket was purchased
        #
        #   @return [Symbol, Believe::Models::Client::TicketSaleUpdateResponse::PurchaseMethod]
        required :purchase_method, enum: -> { Believe::Models::Client::TicketSaleUpdateResponse::PurchaseMethod }

        # @!attribute quantity
        #   Number of tickets purchased
        #
        #   @return [Integer]
        required :quantity, Integer

        # @!attribute subtotal
        #   Subtotal before discount and tax (unit_price \* quantity)
        #
        #   @return [String]
        required :subtotal, String

        # @!attribute tax
        #   Tax amount (20% UK VAT on discounted subtotal)
        #
        #   @return [String]
        required :tax, String

        # @!attribute total
        #   Final total (subtotal - discount + tax)
        #
        #   @return [String]
        required :total, String

        # @!attribute unit_price
        #   Price per ticket (decimal string)
        #
        #   @return [String]
        required :unit_price, String

        # @!attribute buyer_email
        #   Email of the ticket buyer
        #
        #   @return [String, nil]
        optional :buyer_email, String, nil?: true

        # @!attribute coupon_code
        #   Coupon code applied, if any
        #
        #   @return [String, nil]
        optional :coupon_code, String, nil?: true

        # @!method initialize(id:, buyer_name:, currency:, discount:, match_id:, purchase_method:, quantity:, subtotal:, tax:, total:, unit_price:, buyer_email: nil, coupon_code: nil)
        #   Full ticket sale model with ID.
        #
        #   @param id [String] Unique identifier
        #
        #   @param buyer_name [String] Name of the ticket buyer
        #
        #   @param currency [String] Currency code (GBP, USD, or EUR)
        #
        #   @param discount [String] Discount amount applied from coupon
        #
        #   @param match_id [String] ID of the match
        #
        #   @param purchase_method [Symbol, Believe::Models::Client::TicketSaleUpdateResponse::PurchaseMethod] How the ticket was purchased
        #
        #   @param quantity [Integer] Number of tickets purchased
        #
        #   @param subtotal [String] Subtotal before discount and tax (unit_price \* quantity)
        #
        #   @param tax [String] Tax amount (20% UK VAT on discounted subtotal)
        #
        #   @param total [String] Final total (subtotal - discount + tax)
        #
        #   @param unit_price [String] Price per ticket (decimal string)
        #
        #   @param buyer_email [String, nil] Email of the ticket buyer
        #
        #   @param coupon_code [String, nil] Coupon code applied, if any

        # How the ticket was purchased
        #
        # @see Believe::Models::Client::TicketSaleUpdateResponse#purchase_method
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
