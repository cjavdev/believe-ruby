# typed: strong

module Believe
  module Resources
    # Ticket sales with 300 records for practicing pagination, filtering, and
    # financial data
    class TicketSales
      # Record a new ticket sale.
      sig do
        params(
          buyer_name: String,
          currency: String,
          discount: String,
          match_id: String,
          purchase_method: ::Believe::PurchaseMethod::OrSymbol,
          quantity: Integer,
          subtotal: String,
          tax: String,
          total: String,
          unit_price: String,
          buyer_email: T.nilable(String),
          coupon_code: T.nilable(String),
          request_options: ::Believe::RequestOptions::OrHash
        ).returns(::Believe::TicketSale)
      end
      def create(
        # Name of the ticket buyer
        buyer_name:,
        # Currency code (GBP, USD, or EUR)
        currency:,
        # Discount amount applied from coupon
        discount:,
        # ID of the match
        match_id:,
        # How the ticket was purchased
        purchase_method:,
        # Number of tickets purchased
        quantity:,
        # Subtotal before discount and tax (unit_price \* quantity)
        subtotal:,
        # Tax amount (20% UK VAT on discounted subtotal)
        tax:,
        # Final total (subtotal - discount + tax)
        total:,
        # Price per ticket (decimal string)
        unit_price:,
        # Email of the ticket buyer
        buyer_email: nil,
        # Coupon code applied, if any
        coupon_code: nil,
        request_options: {}
      )
      end

      # Retrieve detailed information about a specific ticket sale.
      sig do
        params(
          ticket_sale_id: String,
          request_options: ::Believe::RequestOptions::OrHash
        ).returns(::Believe::TicketSale)
      end
      def retrieve(ticket_sale_id, request_options: {})
      end

      # Update specific fields of an existing ticket sale.
      sig do
        params(
          ticket_sale_id: String,
          buyer_email: T.nilable(String),
          buyer_name: T.nilable(String),
          coupon_code: T.nilable(String),
          currency: T.nilable(String),
          discount: T.nilable(String),
          match_id: T.nilable(String),
          purchase_method: T.nilable(::Believe::PurchaseMethod::OrSymbol),
          quantity: T.nilable(Integer),
          subtotal: T.nilable(String),
          tax: T.nilable(String),
          total: T.nilable(String),
          unit_price: T.nilable(String),
          request_options: ::Believe::RequestOptions::OrHash
        ).returns(::Believe::TicketSale)
      end
      def update(
        ticket_sale_id,
        buyer_email: nil,
        buyer_name: nil,
        coupon_code: nil,
        currency: nil,
        discount: nil,
        match_id: nil,
        # How the ticket was purchased.
        purchase_method: nil,
        quantity: nil,
        subtotal: nil,
        tax: nil,
        total: nil,
        unit_price: nil,
        request_options: {}
      )
      end

      # Get a paginated list of all ticket sales with optional filtering. With 300
      # records, this endpoint is ideal for practicing pagination.
      sig do
        params(
          coupon_code: T.nilable(String),
          currency: T.nilable(String),
          limit: Integer,
          match_id: T.nilable(String),
          purchase_method: T.nilable(::Believe::PurchaseMethod::OrSymbol),
          skip: Integer,
          request_options: ::Believe::RequestOptions::OrHash
        ).returns(::Believe::Internal::SkipLimitPage[::Believe::TicketSale])
      end
      def list(
        # Filter by coupon code (use 'none' for sales without coupons)
        coupon_code: nil,
        # Filter by currency (GBP, USD, EUR)
        currency: nil,
        # Maximum number of items to return (max: 100)
        limit: nil,
        # Filter by match ID
        match_id: nil,
        # Filter by purchase method
        purchase_method: nil,
        # Number of items to skip (offset)
        skip: nil,
        request_options: {}
      )
      end

      # Remove a ticket sale from the database.
      sig do
        params(
          ticket_sale_id: String,
          request_options: ::Believe::RequestOptions::OrHash
        ).void
      end
      def delete(ticket_sale_id, request_options: {})
      end

      # @api private
      sig { params(client: ::Believe::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
