# typed: strong

module Believe
  module Models
    class TicketSaleCreateParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(::Believe::TicketSaleCreateParams, ::Believe::Internal::AnyHash) }

      # Name of the ticket buyer
      sig { returns(String) }
      attr_accessor :buyer_name

      # Currency code (GBP, USD, or EUR)
      sig { returns(String) }
      attr_accessor :currency

      # Discount amount applied from coupon
      sig { returns(String) }
      attr_accessor :discount

      # ID of the match
      sig { returns(String) }
      attr_accessor :match_id

      # How the ticket was purchased
      sig { returns(::Believe::PurchaseMethod::OrSymbol) }
      attr_accessor :purchase_method

      # Number of tickets purchased
      sig { returns(Integer) }
      attr_accessor :quantity

      # Subtotal before discount and tax (unit_price \* quantity)
      sig { returns(String) }
      attr_accessor :subtotal

      # Tax amount (20% UK VAT on discounted subtotal)
      sig { returns(String) }
      attr_accessor :tax

      # Final total (subtotal - discount + tax)
      sig { returns(String) }
      attr_accessor :total

      # Price per ticket (decimal string)
      sig { returns(String) }
      attr_accessor :unit_price

      # Email of the ticket buyer
      sig { returns(T.nilable(String)) }
      attr_accessor :buyer_email

      # Coupon code applied, if any
      sig { returns(T.nilable(String)) }
      attr_accessor :coupon_code

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
        )
          .returns(T.attached_class)
      end
      def self.new(
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
      ); end

      sig do
        override
          .returns(
            {
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
              request_options: ::Believe::RequestOptions
            }
          )
      end
      def to_hash; end
    end
  end
end
