# typed: strong

module Believe
  module Models
    class TicketSaleUpdateParams < Believe::Internal::Type::BaseModel
      extend Believe::Internal::Type::RequestParameters::Converter
      include Believe::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Believe::TicketSaleUpdateParams, Believe::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :ticket_sale_id

      sig { returns(T.nilable(String)) }
      attr_accessor :buyer_email

      sig { returns(T.nilable(String)) }
      attr_accessor :buyer_name

      sig { returns(T.nilable(String)) }
      attr_accessor :coupon_code

      sig { returns(T.nilable(String)) }
      attr_accessor :currency

      sig { returns(T.nilable(String)) }
      attr_accessor :discount

      sig { returns(T.nilable(String)) }
      attr_accessor :match_id

      # How the ticket was purchased.
      sig { returns(T.nilable(Believe::PurchaseMethod::OrSymbol)) }
      attr_accessor :purchase_method

      sig { returns(T.nilable(Integer)) }
      attr_accessor :quantity

      sig { returns(T.nilable(String)) }
      attr_accessor :subtotal

      sig { returns(T.nilable(String)) }
      attr_accessor :tax

      sig { returns(T.nilable(String)) }
      attr_accessor :total

      sig { returns(T.nilable(String)) }
      attr_accessor :unit_price

      sig do
        params(
          ticket_sale_id: String,
          buyer_email: T.nilable(String),
          buyer_name: T.nilable(String),
          coupon_code: T.nilable(String),
          currency: T.nilable(String),
          discount: T.nilable(String),
          match_id: T.nilable(String),
          purchase_method: T.nilable(Believe::PurchaseMethod::OrSymbol),
          quantity: T.nilable(Integer),
          subtotal: T.nilable(String),
          tax: T.nilable(String),
          total: T.nilable(String),
          unit_price: T.nilable(String),
          request_options: Believe::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        ticket_sale_id:,
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

      sig do
        override.returns(
          {
            ticket_sale_id: String,
            buyer_email: T.nilable(String),
            buyer_name: T.nilable(String),
            coupon_code: T.nilable(String),
            currency: T.nilable(String),
            discount: T.nilable(String),
            match_id: T.nilable(String),
            purchase_method: T.nilable(Believe::PurchaseMethod::OrSymbol),
            quantity: T.nilable(Integer),
            subtotal: T.nilable(String),
            tax: T.nilable(String),
            total: T.nilable(String),
            unit_price: T.nilable(String),
            request_options: Believe::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
