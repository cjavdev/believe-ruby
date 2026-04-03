# typed: strong

module Believe
  module Internal
    class SkipLimitPage
      include ::Believe::Internal::Type::BasePage

      Elem = type_member

      sig { returns(T.nilable(T::Array[Elem])) }
      attr_accessor :data

      sig { returns(Integer) }
      attr_accessor :total

      sig { returns(Integer) }
      attr_accessor :skip

      # @api private
      sig { returns(String) }
      def inspect; end
    end
  end
end
