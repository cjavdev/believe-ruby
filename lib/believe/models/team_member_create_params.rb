# frozen_string_literal: true

module Believe
  module Models
    # @see Believe::Resources::TeamMembers#create
    class TeamMemberCreateParams < Believe::Internal::Type::BaseModel
      extend Believe::Internal::Type::RequestParameters::Converter
      include Believe::Internal::Type::RequestParameters

      # @!attribute member
      #   A football player on the team.
      #
      #   @return [Believe::Models::TeamMemberCreateParams::Member::Player, Believe::Models::TeamMemberCreateParams::Member::Coach, Believe::Models::TeamMemberCreateParams::Member::MedicalStaff, Believe::Models::TeamMemberCreateParams::Member::EquipmentManager]
      required :member, union: -> { Believe::TeamMemberCreateParams::Member }

      # @!method initialize(member:, request_options: {})
      #   @param member [Believe::Models::TeamMemberCreateParams::Member::Player, Believe::Models::TeamMemberCreateParams::Member::Coach, Believe::Models::TeamMemberCreateParams::Member::MedicalStaff, Believe::Models::TeamMemberCreateParams::Member::EquipmentManager] A football player on the team.
      #
      #   @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}]

      # A football player on the team.
      module Member
        extend Believe::Internal::Type::Union

        discriminator :member_type

        # A football player on the team.
        variant :player, -> { Believe::TeamMemberCreateParams::Member::Player }

        # A coach or coaching staff member.
        variant :coach, -> { Believe::TeamMemberCreateParams::Member::Coach }

        # Medical and wellness staff member.
        variant :medical_staff, -> { Believe::TeamMemberCreateParams::Member::MedicalStaff }

        # Equipment and kit management staff.
        variant :equipment_manager, -> { Believe::TeamMemberCreateParams::Member::EquipmentManager }

        class Player < Believe::Internal::Type::BaseModel
          # @!attribute character_id
          #   ID of the character (references /characters/{id})
          #
          #   @return [String]
          required :character_id, String

          # @!attribute jersey_number
          #   Jersey/shirt number
          #
          #   @return [Integer]
          required :jersey_number, Integer

          # @!attribute position
          #   Playing position on the field
          #
          #   @return [Symbol, Believe::Models::Position]
          required :position, enum: -> { Believe::Position }

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

          # @!attribute assists
          #   Total assists for the team
          #
          #   @return [Integer, nil]
          optional :assists, Integer

          # @!attribute goals_scored
          #   Total goals scored for the team
          #
          #   @return [Integer, nil]
          optional :goals_scored, Integer

          # @!attribute is_captain
          #   Whether this player is team captain
          #
          #   @return [Boolean, nil]
          optional :is_captain, Believe::Internal::Type::Boolean

          # @!attribute member_type
          #   Discriminator field indicating this is a player
          #
          #   @return [Symbol, Believe::Models::TeamMemberCreateParams::Member::Player::MemberType, nil]
          optional :member_type, enum: -> { Believe::TeamMemberCreateParams::Member::Player::MemberType }

          # @!method initialize(character_id:, jersey_number:, position:, team_id:, years_with_team:, assists: nil, goals_scored: nil, is_captain: nil, member_type: nil)
          #   A football player on the team.
          #
          #   @param character_id [String] ID of the character (references /characters/{id})
          #
          #   @param jersey_number [Integer] Jersey/shirt number
          #
          #   @param position [Symbol, Believe::Models::Position] Playing position on the field
          #
          #   @param team_id [String] ID of the team they belong to
          #
          #   @param years_with_team [Integer] Number of years with the current team
          #
          #   @param assists [Integer] Total assists for the team
          #
          #   @param goals_scored [Integer] Total goals scored for the team
          #
          #   @param is_captain [Boolean] Whether this player is team captain
          #
          #   @param member_type [Symbol, Believe::Models::TeamMemberCreateParams::Member::Player::MemberType] Discriminator field indicating this is a player

          # Discriminator field indicating this is a player
          #
          # @see Believe::Models::TeamMemberCreateParams::Member::Player#member_type
          module MemberType
            extend Believe::Internal::Type::Enum

            PLAYER = :player

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class Coach < Believe::Internal::Type::BaseModel
          # @!attribute character_id
          #   ID of the character (references /characters/{id})
          #
          #   @return [String]
          required :character_id, String

          # @!attribute specialty
          #   Coaching specialty/role
          #
          #   @return [Symbol, Believe::Models::CoachSpecialty]
          required :specialty, enum: -> { Believe::CoachSpecialty }

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

          # @!attribute certifications
          #   Coaching certifications and licenses
          #
          #   @return [Array<String>, nil]
          optional :certifications, Believe::Internal::Type::ArrayOf[String]

          # @!attribute member_type
          #   Discriminator field indicating this is a coach
          #
          #   @return [Symbol, Believe::Models::TeamMemberCreateParams::Member::Coach::MemberType, nil]
          optional :member_type, enum: -> { Believe::TeamMemberCreateParams::Member::Coach::MemberType }

          # @!attribute win_rate
          #   Career win rate (0.0 to 1.0)
          #
          #   @return [Float, nil]
          optional :win_rate, Float, nil?: true

          # @!method initialize(character_id:, specialty:, team_id:, years_with_team:, certifications: nil, member_type: nil, win_rate: nil)
          #   A coach or coaching staff member.
          #
          #   @param character_id [String] ID of the character (references /characters/{id})
          #
          #   @param specialty [Symbol, Believe::Models::CoachSpecialty] Coaching specialty/role
          #
          #   @param team_id [String] ID of the team they belong to
          #
          #   @param years_with_team [Integer] Number of years with the current team
          #
          #   @param certifications [Array<String>] Coaching certifications and licenses
          #
          #   @param member_type [Symbol, Believe::Models::TeamMemberCreateParams::Member::Coach::MemberType] Discriminator field indicating this is a coach
          #
          #   @param win_rate [Float, nil] Career win rate (0.0 to 1.0)

          # Discriminator field indicating this is a coach
          #
          # @see Believe::Models::TeamMemberCreateParams::Member::Coach#member_type
          module MemberType
            extend Believe::Internal::Type::Enum

            COACH = :coach

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class MedicalStaff < Believe::Internal::Type::BaseModel
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
          #   @return [Symbol, Believe::Models::TeamMemberCreateParams::Member::MedicalStaff::MemberType, nil]
          optional :member_type, enum: -> { Believe::TeamMemberCreateParams::Member::MedicalStaff::MemberType }

          # @!attribute qualifications
          #   Medical qualifications and degrees
          #
          #   @return [Array<String>, nil]
          optional :qualifications, Believe::Internal::Type::ArrayOf[String]

          # @!method initialize(character_id:, specialty:, team_id:, years_with_team:, license_number: nil, member_type: nil, qualifications: nil)
          #   Medical and wellness staff member.
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
          #   @param member_type [Symbol, Believe::Models::TeamMemberCreateParams::Member::MedicalStaff::MemberType] Discriminator field indicating this is medical staff
          #
          #   @param qualifications [Array<String>] Medical qualifications and degrees

          # Discriminator field indicating this is medical staff
          #
          # @see Believe::Models::TeamMemberCreateParams::Member::MedicalStaff#member_type
          module MemberType
            extend Believe::Internal::Type::Enum

            MEDICAL_STAFF = :medical_staff

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class EquipmentManager < Believe::Internal::Type::BaseModel
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
          #   @return [Symbol, Believe::Models::TeamMemberCreateParams::Member::EquipmentManager::MemberType, nil]
          optional :member_type, enum: -> { Believe::TeamMemberCreateParams::Member::EquipmentManager::MemberType }

          # @!attribute responsibilities
          #   List of responsibilities
          #
          #   @return [Array<String>, nil]
          optional :responsibilities, Believe::Internal::Type::ArrayOf[String]

          # @!method initialize(character_id:, team_id:, years_with_team:, is_head_kitman: nil, member_type: nil, responsibilities: nil)
          #   Equipment and kit management staff.
          #
          #   @param character_id [String] ID of the character (references /characters/{id})
          #
          #   @param team_id [String] ID of the team they belong to
          #
          #   @param years_with_team [Integer] Number of years with the current team
          #
          #   @param is_head_kitman [Boolean] Whether this is the head equipment manager
          #
          #   @param member_type [Symbol, Believe::Models::TeamMemberCreateParams::Member::EquipmentManager::MemberType] Discriminator field indicating this is an equipment manager
          #
          #   @param responsibilities [Array<String>] List of responsibilities

          # Discriminator field indicating this is an equipment manager
          #
          # @see Believe::Models::TeamMemberCreateParams::Member::EquipmentManager#member_type
          module MemberType
            extend Believe::Internal::Type::Enum

            EQUIPMENT_MANAGER = :equipment_manager

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @!method self.variants
        #   @return [Array(Believe::Models::TeamMemberCreateParams::Member::Player, Believe::Models::TeamMemberCreateParams::Member::Coach, Believe::Models::TeamMemberCreateParams::Member::MedicalStaff, Believe::Models::TeamMemberCreateParams::Member::EquipmentManager)]
      end
    end
  end
end
