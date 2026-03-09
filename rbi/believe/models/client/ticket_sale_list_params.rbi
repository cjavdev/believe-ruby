# typed: strong

module Believe
  module Models
    module Client
      class TicketSaleListParams < Believe::Internal::Type::BaseModel
        extend Believe::Internal::Type::RequestParameters::Converter
        include Believe::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Believe::Models::Client::TicketSaleListParams,
              Believe::Internal::AnyHash
            )
          end

        # Filter by coupon code (use 'none' for sales without coupons)
        sig { returns(T.nilable(String)) }
        attr_accessor :coupon_code

        # Filter by currency (GBP, USD, EUR)
        sig { returns(T.nilable(String)) }
        attr_accessor :currency

        # Maximum number of items to return (max: 100)
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Filter by match ID
        sig { returns(T.nilable(String)) }
        attr_accessor :match_id

        # Filter by purchase method
        sig do
          returns(
            T.nilable(
              Believe::Models::Client::TicketSaleListParams::PurchaseMethod::OrSymbol
            )
          )
        end
        attr_accessor :purchase_method

        # Number of items to skip (offset)
        sig { returns(T.nilable(Integer)) }
        attr_reader :skip

        sig { params(skip: Integer).void }
        attr_writer :skip

        sig do
          params(
            coupon_code: T.nilable(String),
            currency: T.nilable(String),
            limit: Integer,
            match_id: T.nilable(String),
            purchase_method:
              T.nilable(
                Believe::Models::Client::TicketSaleListParams::PurchaseMethod::OrSymbol
              ),
            skip: Integer,
            request_options: Believe::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
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

        sig do
          override.returns(
            {
              coupon_code: T.nilable(String),
              currency: T.nilable(String),
              limit: Integer,
              match_id: T.nilable(String),
              purchase_method:
                T.nilable(
                  Believe::Models::Client::TicketSaleListParams::PurchaseMethod::OrSymbol
                ),
              skip: Integer,
              request_options: Believe::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Filter by purchase method
        module PurchaseMethod
          extend Believe::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Believe::Models::Client::TicketSaleListParams::PurchaseMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONLINE =
            T.let(
              :online,
              Believe::Models::Client::TicketSaleListParams::PurchaseMethod::TaggedSymbol
            )
          BOX_OFFICE =
            T.let(
              :box_office,
              Believe::Models::Client::TicketSaleListParams::PurchaseMethod::TaggedSymbol
            )
          WILL_CALL =
            T.let(
              :will_call,
              Believe::Models::Client::TicketSaleListParams::PurchaseMethod::TaggedSymbol
            )
          PHONE =
            T.let(
              :phone,
              Believe::Models::Client::TicketSaleListParams::PurchaseMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Believe::Models::Client::TicketSaleListParams::PurchaseMethod::TaggedSymbol
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
