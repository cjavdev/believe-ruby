# frozen_string_literal: true

module Believe
  module Models
    class MedicalStaff < Believe::Internal::Type::BaseModel
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

      # @!attribute specialty
      #   Medical specialty
      #
      #   @return [Symbol, Believe::Models::MedicalSpecialty]
      required :specialty, enum: -> { Believe::MedicalSpecialty }

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

      # @!attribute license_number
      #   Professional license number
      #
      #   @return [String, nil]
      optional :license_number, String, nil?: true

      # @!attribute member_type
      #   Discriminator field indicating this is medical staff
      #
      #   @return [Symbol, Believe::Models::MedicalStaff::MemberType, nil]
      optional :member_type, enum: -> { Believe::MedicalStaff::MemberType }

      # @!attribute qualifications
      #   Medical qualifications and degrees
      #
      #   @return [Array<String>, nil]
      optional :qualifications, Believe::Internal::Type::ArrayOf[String]

      # @!method initialize(id:, character_id:, specialty:, team_id:, years_with_team:, license_number: nil, member_type: nil, qualifications: nil)
      #   Full medical staff model with ID.
      #
      #   @param id [String] Unique identifier for this team membership
      #
      #   @param character_id [String] ID of the character (references /characters/{id})
      #
      #   @param specialty [Symbol, Believe::Models::MedicalSpecialty] Medical specialty
      #
      #   @param team_id [String] ID of the team they belong to
      #
      #   @param years_with_team [Integer] Number of years with the current team
      #
      #   @param license_number [String, nil] Professional license number
      #
      #   @param member_type [Symbol, Believe::Models::MedicalStaff::MemberType] Discriminator field indicating this is medical staff
      #
      #   @param qualifications [Array<String>] Medical qualifications and degrees

      # Discriminator field indicating this is medical staff
      #
      # @see Believe::Models::MedicalStaff#member_type
      module MemberType
        extend Believe::Internal::Type::Enum

        MEDICAL_STAFF = :medical_staff

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
