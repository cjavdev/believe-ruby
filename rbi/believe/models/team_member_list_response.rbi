# typed: strong

module Believe
  module Models
    # Full player model with ID.
    module TeamMemberListResponse
      extend ::Believe::Internal::Type::Union

      Variants =
        T.type_alias { T.any(::Believe::Player, ::Believe::Coach, ::Believe::MedicalStaff, ::Believe::EquipmentManager) }

      sig { override.returns(T::Array[::Believe::Models::TeamMemberListResponse::Variants]) }
      def self.variants; end
    end
  end
end
