# frozen_string_literal: true

module Believe
  module Models
    # Full player model with ID.
    #
    # @see ::Believe::Resources::TeamMembers#create
    module TeamMemberCreateResponse
      extend ::Believe::Internal::Type::Union

      discriminator :member_type

      # Full player model with ID.
      variant :player, -> { ::Believe::Player }

      # Full coach model with ID.
      variant :coach, -> { ::Believe::Coach }

      # Full medical staff model with ID.
      variant :medical_staff, -> { ::Believe::MedicalStaff }

      # Full equipment manager model with ID.
      variant :equipment_manager, -> { ::Believe::EquipmentManager }

      # @!method self.variants
      #   @return [Array(::Believe::Models::Player, ::Believe::Models::Coach, ::Believe::Models::MedicalStaff, ::Believe::Models::EquipmentManager)]
    end
  end
end
