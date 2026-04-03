# typed: strong

module Believe
  module Models
    # Full medical staff model with ID.
    module TeamMemberListStaffResponse
      extend ::Believe::Internal::Type::Union

      Variants = T.type_alias { T.any(::Believe::MedicalStaff, ::Believe::EquipmentManager) }

      sig { override.returns(T::Array[::Believe::Models::TeamMemberListStaffResponse::Variants]) }
      def self.variants; end
    end
  end
end
