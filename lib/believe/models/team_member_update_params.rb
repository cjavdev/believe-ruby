# frozen_string_literal: true

module Believe
  module Models
    # @see ::Believe::Resources::TeamMembers#update
    class TeamMemberUpdateParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

      # @!attribute member_id
      #
      #   @return [String]
      required :member_id, String

      # @!attribute updates
      #   Update model for players.
      #
      #   @return [::Believe::Models::TeamMemberUpdateParams::Updates::PlayerUpdate, ::Believe::Models::TeamMemberUpdateParams::Updates::CoachUpdate, ::Believe::Models::TeamMemberUpdateParams::Updates::MedicalStaffUpdate, ::Believe::Models::TeamMemberUpdateParams::Updates::EquipmentManagerUpdate]
      required :updates, union: -> { ::Believe::TeamMemberUpdateParams::Updates }

      # @!method initialize(member_id:, updates:, request_options: {})
      #   @param member_id [String]
      #
      #   @param updates [::Believe::Models::TeamMemberUpdateParams::Updates::PlayerUpdate, ::Believe::Models::TeamMemberUpdateParams::Updates::CoachUpdate, ::Believe::Models::TeamMemberUpdateParams::Updates::MedicalStaffUpdate, ::Believe::Models::TeamMemberUpdateParams::Updates::EquipmentManagerUpdate] Update model for players.
      #
      #   @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}]

      # Update model for players.
      module Updates
        extend ::Believe::Internal::Type::Union

        # Update model for players.
        variant -> { ::Believe::TeamMemberUpdateParams::Updates::PlayerUpdate }

        # Update model for coaches.
        variant -> { ::Believe::TeamMemberUpdateParams::Updates::CoachUpdate }

        # Update model for medical staff.
        variant -> { ::Believe::TeamMemberUpdateParams::Updates::MedicalStaffUpdate }

        # Update model for equipment managers.
        variant -> { ::Believe::TeamMemberUpdateParams::Updates::EquipmentManagerUpdate }

        class PlayerUpdate < ::Believe::Internal::Type::BaseModel
          # @!attribute assists
          #
          #   @return [Integer, nil]
          optional :assists, Integer, nil?: true

          # @!attribute goals_scored
          #
          #   @return [Integer, nil]
          optional :goals_scored, Integer, nil?: true

          # @!attribute is_captain
          #
          #   @return [Boolean, nil]
          optional :is_captain, ::Believe::Internal::Type::Boolean, nil?: true

          # @!attribute jersey_number
          #
          #   @return [Integer, nil]
          optional :jersey_number, Integer, nil?: true

          # @!attribute position
          #   Football positions for players.
          #
          #   @return [Symbol, ::Believe::Models::Position, nil]
          optional :position, enum: -> { ::Believe::Position }, nil?: true

          # @!attribute team_id
          #
          #   @return [String, nil]
          optional :team_id, String, nil?: true

          # @!attribute years_with_team
          #
          #   @return [Integer, nil]
          optional :years_with_team, Integer, nil?: true

          # @!method initialize(assists: nil, goals_scored: nil, is_captain: nil, jersey_number: nil, position: nil, team_id: nil, years_with_team: nil)
          #   Update model for players.
          #
          #   @param assists [Integer, nil]
          #
          #   @param goals_scored [Integer, nil]
          #
          #   @param is_captain [Boolean, nil]
          #
          #   @param jersey_number [Integer, nil]
          #
          #   @param position [Symbol, ::Believe::Models::Position, nil] Football positions for players.
          #
          #   @param team_id [String, nil]
          #
          #   @param years_with_team [Integer, nil]
        end

        class CoachUpdate < ::Believe::Internal::Type::BaseModel
          # @!attribute certifications
          #
          #   @return [Array<String>, nil]
          optional :certifications, ::Believe::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute specialty
          #   Coaching specialties.
          #
          #   @return [Symbol, ::Believe::Models::CoachSpecialty, nil]
          optional :specialty, enum: -> { ::Believe::CoachSpecialty }, nil?: true

          # @!attribute team_id
          #
          #   @return [String, nil]
          optional :team_id, String, nil?: true

          # @!attribute win_rate
          #
          #   @return [Float, nil]
          optional :win_rate, Float, nil?: true

          # @!attribute years_with_team
          #
          #   @return [Integer, nil]
          optional :years_with_team, Integer, nil?: true

          # @!method initialize(certifications: nil, specialty: nil, team_id: nil, win_rate: nil, years_with_team: nil)
          #   Update model for coaches.
          #
          #   @param certifications [Array<String>, nil]
          #
          #   @param specialty [Symbol, ::Believe::Models::CoachSpecialty, nil] Coaching specialties.
          #
          #   @param team_id [String, nil]
          #
          #   @param win_rate [Float, nil]
          #
          #   @param years_with_team [Integer, nil]
        end

        class MedicalStaffUpdate < ::Believe::Internal::Type::BaseModel
          # @!attribute license_number
          #
          #   @return [String, nil]
          optional :license_number, String, nil?: true

          # @!attribute qualifications
          #
          #   @return [Array<String>, nil]
          optional :qualifications, ::Believe::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute specialty
          #   Medical staff specialties.
          #
          #   @return [Symbol, ::Believe::Models::MedicalSpecialty, nil]
          optional :specialty, enum: -> { ::Believe::MedicalSpecialty }, nil?: true

          # @!attribute team_id
          #
          #   @return [String, nil]
          optional :team_id, String, nil?: true

          # @!attribute years_with_team
          #
          #   @return [Integer, nil]
          optional :years_with_team, Integer, nil?: true

          # @!method initialize(license_number: nil, qualifications: nil, specialty: nil, team_id: nil, years_with_team: nil)
          #   Update model for medical staff.
          #
          #   @param license_number [String, nil]
          #
          #   @param qualifications [Array<String>, nil]
          #
          #   @param specialty [Symbol, ::Believe::Models::MedicalSpecialty, nil] Medical staff specialties.
          #
          #   @param team_id [String, nil]
          #
          #   @param years_with_team [Integer, nil]
        end

        class EquipmentManagerUpdate < ::Believe::Internal::Type::BaseModel
          # @!attribute is_head_kitman
          #
          #   @return [Boolean, nil]
          optional :is_head_kitman, ::Believe::Internal::Type::Boolean, nil?: true

          # @!attribute responsibilities
          #
          #   @return [Array<String>, nil]
          optional :responsibilities, ::Believe::Internal::Type::ArrayOf[String], nil?: true

          # @!attribute team_id
          #
          #   @return [String, nil]
          optional :team_id, String, nil?: true

          # @!attribute years_with_team
          #
          #   @return [Integer, nil]
          optional :years_with_team, Integer, nil?: true

          # @!method initialize(is_head_kitman: nil, responsibilities: nil, team_id: nil, years_with_team: nil)
          #   Update model for equipment managers.
          #
          #   @param is_head_kitman [Boolean, nil]
          #   @param responsibilities [Array<String>, nil]
          #   @param team_id [String, nil]
          #   @param years_with_team [Integer, nil]
        end

        # @!method self.variants
        #   @return [Array(::Believe::Models::TeamMemberUpdateParams::Updates::PlayerUpdate, ::Believe::Models::TeamMemberUpdateParams::Updates::CoachUpdate, ::Believe::Models::TeamMemberUpdateParams::Updates::MedicalStaffUpdate, ::Believe::Models::TeamMemberUpdateParams::Updates::EquipmentManagerUpdate)]
      end
    end
  end
end
