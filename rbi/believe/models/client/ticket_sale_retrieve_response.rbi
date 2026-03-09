# typed: strong

module Believe
  module Models
    module Client
      class TicketSaleRetrieveResponse < Believe::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Believe::Models::Client::TicketSaleRetrieveResponse,
              Believe::Internal::AnyHash
            )
          end

        # Unique identifier
        sig { returns(String) }
        attr_accessor :id

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
        sig do
          returns(
            Believe::Models::Client::TicketSaleRetrieveResponse::PurchaseMethod::TaggedSymbol
          )
        end
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

        # Full ticket sale model with ID.
        sig do
          params(
            id: String,
            buyer_name: String,
            currency: String,
            discount: String,
            match_id: String,
            purchase_method:
              Believe::Models::Client::TicketSaleRetrieveResponse::PurchaseMethod::OrSymbol,
            quantity: Integer,
            subtotal: String,
            tax: String,
            total: String,
            unit_price: String,
            buyer_email: T.nilable(String),
            coupon_code: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier
          id:,
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
          coupon_code: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              buyer_name: String,
              currency: String,
              discount: String,
              match_id: String,
              purchase_method:
                Believe::Models::Client::TicketSaleRetrieveResponse::PurchaseMethod::TaggedSymbol,
              quantity: Integer,
              subtotal: String,
              tax: String,
              total: String,
              unit_price: String,
              buyer_email: T.nilable(String),
              coupon_code: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        # How the ticket was purchased
        module PurchaseMethod
          extend Believe::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Believe::Models::Client::TicketSaleRetrieveResponse::PurchaseMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONLINE =
            T.let(
              :online,
              Believe::Models::Client::TicketSaleRetrieveResponse::PurchaseMethod::TaggedSymbol
            )
          BOX_OFFICE =
            T.let(
              :box_office,
              Believe::Models::Client::TicketSaleRetrieveResponse::PurchaseMethod::TaggedSymbol
            )
          WILL_CALL =
            T.let(
              :will_call,
              Believe::Models::Client::TicketSaleRetrieveResponse::PurchaseMethod::TaggedSymbol
            )
          PHONE =
            T.let(
              :phone,
              Believe::Models::Client::TicketSaleRetrieveResponse::PurchaseMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Believe::Models::Client::TicketSaleRetrieveResponse::PurchaseMethod::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
