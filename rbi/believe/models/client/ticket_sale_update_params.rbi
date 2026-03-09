# typed: strong

module Believe
  module Models
    module Client
      class TicketSaleUpdateParams < Believe::Internal::Type::BaseModel
        extend Believe::Internal::Type::RequestParameters::Converter
        include Believe::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Believe::Models::Client::TicketSaleUpdateParams,
              Believe::Internal::AnyHash
            )
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
        sig do
          returns(
            T.nilable(
              Believe::Models::Client::TicketSaleUpdateParams::PurchaseMethod::OrSymbol
            )
          )
        end
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
            purchase_method:
              T.nilable(
                Believe::Models::Client::TicketSaleUpdateParams::PurchaseMethod::OrSymbol
              ),
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
              purchase_method:
                T.nilable(
                  Believe::Models::Client::TicketSaleUpdateParams::PurchaseMethod::OrSymbol
                ),
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

        # How the ticket was purchased.
        module PurchaseMethod
          extend Believe::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Believe::Models::Client::TicketSaleUpdateParams::PurchaseMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONLINE =
            T.let(
              :online,
              Believe::Models::Client::TicketSaleUpdateParams::PurchaseMethod::TaggedSymbol
            )
          BOX_OFFICE =
            T.let(
              :box_office,
              Believe::Models::Client::TicketSaleUpdateParams::PurchaseMethod::TaggedSymbol
            )
          WILL_CALL =
            T.let(
              :will_call,
              Believe::Models::Client::TicketSaleUpdateParams::PurchaseMethod::TaggedSymbol
            )
          PHONE =
            T.let(
              :phone,
              Believe::Models::Client::TicketSaleUpdateParams::PurchaseMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Believe::Models::Client::TicketSaleUpdateParams::PurchaseMethod::TaggedSymbol
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
