# typed: strong

module Believe
  module Models
    # Full player model with ID.
    module TeamMemberRetrieveResponse
      extend ::Believe::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            ::Believe::Player,
            ::Believe::Coach,
            ::Believe::MedicalStaff,
            ::Believe::EquipmentManager
          )
        end

      sig do
        override.returns(
          T::Array[::Believe::Models::TeamMemberRetrieveResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
