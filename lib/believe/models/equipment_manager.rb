# frozen_string_literal: true

module Believe
  module Models
    class EquipmentManager < Believe::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for this team membership
      #
      #   @return [String]
      required :id, String

      # @!attribute character_id
      #   ID of the character (references /characters/{id})
      #
      #   @return [String]
      required :character_id, String

      # @!attribute team_id
      #   ID of the team they belong to
      #
      #   @return [String]
      required :team_id, String

      # @!attribute years_with_team
      #   Number of years with the current team
      #
      #   @return [Integer]
      required :years_with_team, Integer

      # @!attribute is_head_kitman
      #   Whether this is the head equipment manager
      #
      #   @return [Boolean, nil]
      optional :is_head_kitman, Believe::Internal::Type::Boolean

      # @!attribute member_type
      #   Discriminator field indicating this is an equipment manager
      #
      #   @return [Symbol, Believe::Models::EquipmentManager::MemberType, nil]
      optional :member_type, enum: -> { Believe::EquipmentManager::MemberType }

      # @!attribute responsibilities
      #   List of responsibilities
      #
      #   @return [Array<String>, nil]
      optional :responsibilities, Believe::Internal::Type::ArrayOf[String]

      # @!method initialize(id:, character_id:, team_id:, years_with_team:, is_head_kitman: nil, member_type: nil, responsibilities: nil)
      #   Full equipment manager model with ID.
      #
      #   @param id [String] Unique identifier for this team membership
      #
      #   @param character_id [String] ID of the character (references /characters/{id})
      #
      #   @param team_id [String] ID of the team they belong to
      #
      #   @param years_with_team [Integer] Number of years with the current team
      #
      #   @param is_head_kitman [Boolean] Whether this is the head equipment manager
      #
      #   @param member_type [Symbol, Believe::Models::EquipmentManager::MemberType] Discriminator field indicating this is an equipment manager
      #
      #   @param responsibilities [Array<String>] List of responsibilities

      # Discriminator field indicating this is an equipment manager
      #
      # @see Believe::Models::EquipmentManager#member_type
      module MemberType
        extend Believe::Internal::Type::Enum

        EQUIPMENT_MANAGER = :equipment_manager

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
