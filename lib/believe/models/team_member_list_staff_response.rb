# frozen_string_literal: true

module Believe
  module Models
    # Full medical staff model with ID.
    #
    # @see ::Believe::Resources::TeamMembers#list_staff
    module TeamMemberListStaffResponse
      extend ::Believe::Internal::Type::Union

      # Full medical staff model with ID.
      variant -> { ::Believe::MedicalStaff }

      # Full equipment manager model with ID.
      variant -> { ::Believe::EquipmentManager }

      # @!method self.variants
      #   @return [Array(::Believe::Models::MedicalStaff, ::Believe::Models::EquipmentManager)]
    end
  end
end
