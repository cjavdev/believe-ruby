# typed: strong

module Believe
  module Models
    # Full medical staff model with ID.
    module TeamMemberListStaffResponse
      extend ::Believe::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(::Believe::MedicalStaff, ::Believe::EquipmentManager)
        end

      sig do
        override.returns(
          T::Array[::Believe::Models::TeamMemberListStaffResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
