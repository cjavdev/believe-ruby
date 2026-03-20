# typed: strong

module Believe
  module Models
    # How the ticket was purchased.
    module PurchaseMethod
      extend ::Believe::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, ::Believe::PurchaseMethod) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ONLINE = T.let(:online, ::Believe::PurchaseMethod::TaggedSymbol)
      BOX_OFFICE = T.let(:box_office, ::Believe::PurchaseMethod::TaggedSymbol)
      WILL_CALL = T.let(:will_call, ::Believe::PurchaseMethod::TaggedSymbol)
      PHONE = T.let(:phone, ::Believe::PurchaseMethod::TaggedSymbol)

      sig do
        override.returns(T::Array[::Believe::PurchaseMethod::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
