# typed: strong

module Believe
  module Models
    class TicketSaleListParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(::Believe::TicketSaleListParams, ::Believe::Internal::AnyHash)
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
      sig { returns(T.nilable(::Believe::PurchaseMethod::OrSymbol)) }
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
          purchase_method: T.nilable(::Believe::PurchaseMethod::OrSymbol),
          skip: Integer,
          request_options: ::Believe::RequestOptions::OrHash
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
            purchase_method: T.nilable(::Believe::PurchaseMethod::OrSymbol),
            skip: Integer,
            request_options: ::Believe::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
