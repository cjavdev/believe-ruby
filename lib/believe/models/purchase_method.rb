# frozen_string_literal: true

module Believe
  module Models
    # How the ticket was purchased.
    module PurchaseMethod
      extend ::Believe::Internal::Type::Enum

      ONLINE = :online
      BOX_OFFICE = :box_office
      WILL_CALL = :will_call
      PHONE = :phone

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
