# frozen_string_literal: true

module Believe
  module Models
    module Client
      # @see Believe::Resources::Client::TicketSales#list
      class TicketSaleListParams < Believe::Internal::Type::BaseModel
        extend Believe::Internal::Type::RequestParameters::Converter
        include Believe::Internal::Type::RequestParameters

        # @!attribute coupon_code
        #   Filter by coupon code (use 'none' for sales without coupons)
        #
        #   @return [String, nil]
        optional :coupon_code, String, nil?: true

        # @!attribute currency
        #   Filter by currency (GBP, USD, EUR)
        #
        #   @return [String, nil]
        optional :currency, String, nil?: true

        # @!attribute limit
        #   Maximum number of items to return (max: 100)
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute match_id
        #   Filter by match ID
        #
        #   @return [String, nil]
        optional :match_id, String, nil?: true

        # @!attribute purchase_method
        #   Filter by purchase method
        #
        #   @return [Symbol, Believe::Models::Client::TicketSaleListParams::PurchaseMethod, nil]
        optional :purchase_method,
                 enum: -> { Believe::Models::Client::TicketSaleListParams::PurchaseMethod },
                 nil?: true

        # @!attribute skip
        #   Number of items to skip (offset)
        #
        #   @return [Integer, nil]
        optional :skip, Integer

        # @!method initialize(coupon_code: nil, currency: nil, limit: nil, match_id: nil, purchase_method: nil, skip: nil, request_options: {})
        #   @param coupon_code [String, nil] Filter by coupon code (use 'none' for sales without coupons)
        #
        #   @param currency [String, nil] Filter by currency (GBP, USD, EUR)
        #
        #   @param limit [Integer] Maximum number of items to return (max: 100)
        #
        #   @param match_id [String, nil] Filter by match ID
        #
        #   @param purchase_method [Symbol, Believe::Models::Client::TicketSaleListParams::PurchaseMethod, nil] Filter by purchase method
        #
        #   @param skip [Integer] Number of items to skip (offset)
        #
        #   @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}]

        # Filter by purchase method
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
