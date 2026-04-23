# frozen_string_literal: true

module Believe
  module Resources
    # Ticket sales with 300 records for practicing pagination, filtering, and financial data
    class TicketSales
      # Record a new ticket sale.
      #
      # @overload create(buyer_name:, currency:, discount:, match_id:, purchase_method:, quantity:, subtotal:, tax:, total:, unit_price:, buyer_email: nil, coupon_code: nil, request_options: {})
      #
      # @param buyer_name [String] Name of the ticket buyer
      #
      # @param currency [String] Currency code (GBP, USD, or EUR)
      #
      # @param discount [String] Discount amount applied from coupon
      #
      # @param match_id [String] ID of the match
      #
      # @param purchase_method [Symbol, ::Believe::Models::PurchaseMethod] How the ticket was purchased
      #
      # @param quantity [Integer] Number of tickets purchased
      #
      # @param subtotal [String] Subtotal before discount and tax (unit_price * quantity)
      #
      # @param tax [String] Tax amount (20% UK VAT on discounted subtotal)
      #
      # @param total [String] Final total (subtotal - discount + tax)
      #
      # @param unit_price [String] Price per ticket (decimal string)
      #
      # @param buyer_email [String, nil] Email of the ticket buyer
      #
      # @param coupon_code [String, nil] Coupon code applied, if any
      #
      # @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [::Believe::Models::TicketSale]
      #
      # @see ::Believe::Models::TicketSaleCreateParams
      def create(params)
        parsed, options = ::Believe::TicketSaleCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "ticket-sales",
          body: parsed,
          model: ::Believe::TicketSale,
          options: options
        )
      end

      # Retrieve detailed information about a specific ticket sale.
      #
      # @overload retrieve(ticket_sale_id, request_options: {})
      #
      # @param ticket_sale_id [String]
      # @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [::Believe::Models::TicketSale]
      #
      # @see ::Believe::Models::TicketSaleRetrieveParams
      def retrieve(ticket_sale_id, params = {})
        @client.request(
          method: :get,
          path: ["ticket-sales/%1$s", ticket_sale_id],
          model: ::Believe::TicketSale,
          options: params[:request_options]
        )
      end

      # Update specific fields of an existing ticket sale.
      #
      # @overload update(ticket_sale_id, buyer_email: nil, buyer_name: nil, coupon_code: nil, currency: nil, discount: nil, match_id: nil, purchase_method: nil, quantity: nil, subtotal: nil, tax: nil, total: nil, unit_price: nil, request_options: {})
      #
      # @param ticket_sale_id [String]
      #
      # @param buyer_email [String, nil]
      #
      # @param buyer_name [String, nil]
      #
      # @param coupon_code [String, nil]
      #
      # @param currency [String, nil]
      #
      # @param discount [String, nil]
      #
      # @param match_id [String, nil]
      #
      # @param purchase_method [Symbol, ::Believe::Models::PurchaseMethod, nil] How the ticket was purchased.
      #
      # @param quantity [Integer, nil]
      #
      # @param subtotal [String, nil]
      #
      # @param tax [String, nil]
      #
      # @param total [String, nil]
      #
      # @param unit_price [String, nil]
      #
      # @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [::Believe::Models::TicketSale]
      #
      # @see ::Believe::Models::TicketSaleUpdateParams
      def update(ticket_sale_id, params = {})
        parsed, options = ::Believe::TicketSaleUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["ticket-sales/%1$s", ticket_sale_id],
          body: parsed,
          model: ::Believe::TicketSale,
          options: options
        )
      end

      # Get a paginated list of all ticket sales with optional filtering. With 300 records, this endpoint is ideal for practicing pagination.
      #
      # @overload list(coupon_code: nil, currency: nil, limit: nil, match_id: nil, purchase_method: nil, skip: nil, request_options: {})
      #
      # @param coupon_code [String, nil] Filter by coupon code (use 'none' for sales without coupons)
      #
      # @param currency [String, nil] Filter by currency (GBP, USD, EUR)
      #
      # @param limit [Integer] Maximum number of items to return (max: 100)
      #
      # @param match_id [String, nil] Filter by match ID
      #
      # @param purchase_method [Symbol, ::Believe::Models::PurchaseMethod, nil] Filter by purchase method
      #
      # @param skip [Integer] Number of items to skip (offset)
      #
      # @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [::Believe::Internal::SkipLimitPage<::Believe::Models::TicketSale>]
      #
      # @see ::Believe::Models::TicketSaleListParams
      def list(params = {})
        parsed, options = ::Believe::TicketSaleListParams.dump_request(params)
        query = ::Believe::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "ticket-sales",
          query: query,
          page: ::Believe::Internal::SkipLimitPage,
          model: ::Believe::TicketSale,
          options: options
        )
      end

      # Remove a ticket sale from the database.
      #
      # @overload delete(ticket_sale_id, request_options: {})
      #
      # @param ticket_sale_id [String]
      # @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see ::Believe::Models::TicketSaleDeleteParams
      def delete(ticket_sale_id, params = {})
        @client.request(
          method: :delete,
          path: ["ticket-sales/%1$s", ticket_sale_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [::Believe::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
