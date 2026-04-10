# typed: strong

module Believe
  module Models
    class TeamMemberCreateParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(::Believe::TeamMemberCreateParams, ::Believe::Internal::AnyHash) }

      # A football player on the team.
      sig do
        returns(
          T.any(
            ::Believe::TeamMemberCreateParams::Member::Player,
            ::Believe::TeamMemberCreateParams::Member::Coach,
            ::Believe::TeamMemberCreateParams::Member::MedicalStaff,
            ::Believe::TeamMemberCreateParams::Member::EquipmentManager
          )
        )
      end
      attr_accessor :member

      sig do
        params(
          member: T.any(
            ::Believe::TeamMemberCreateParams::Member::Player::OrHash,
            ::Believe::TeamMemberCreateParams::Member::Coach::OrHash,
            ::Believe::TeamMemberCreateParams::Member::MedicalStaff::OrHash,
            ::Believe::TeamMemberCreateParams::Member::EquipmentManager::OrHash
          ),
          request_options: ::Believe::RequestOptions::OrHash
        )
          .returns(T.attached_class)
      end
      def self.new(
        # A football player on the team.
      member:,
        request_options: {}
      ); end

      sig do
        override
          .returns(
            {
              member: T.any(
                ::Believe::TeamMemberCreateParams::Member::Player,
                ::Believe::TeamMemberCreateParams::Member::Coach,
                ::Believe::TeamMemberCreateParams::Member::MedicalStaff,
                ::Believe::TeamMemberCreateParams::Member::EquipmentManager
              ),
              request_options: ::Believe::RequestOptions
            }
          )
      end
      def to_hash; end

      # A football player on the team.
      module Member
        extend ::Believe::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              ::Believe::TeamMemberCreateParams::Member::Player,
              ::Believe::TeamMemberCreateParams::Member::Coach,
              ::Believe::TeamMemberCreateParams::Member::MedicalStaff,
              ::Believe::TeamMemberCreateParams::Member::EquipmentManager
            )
          end

        class Player < ::Believe::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(::Believe::TeamMemberCreateParams::Member::Player, ::Believe::Internal::AnyHash) }

          # ID of the character (references /characters/{id})
          sig { returns(String) }
          attr_accessor :character_id

          # Jersey/shirt number
          sig { returns(Integer) }
          attr_accessor :jersey_number

          # Playing position on the field
          sig { returns(::Believe::Position::OrSymbol) }
          attr_accessor :position

          # ID of the team they belong to
          sig { returns(String) }
          attr_accessor :team_id

          # Number of years with the current team
          sig { returns(Integer) }
          attr_accessor :years_with_team

          # Total assists for the team
          sig { returns(T.nilable(Integer)) }
          attr_reader :assists

          sig { params(assists: Integer).void }
          attr_writer :assists

          # Total goals scored for the team
          sig { returns(T.nilable(Integer)) }
          attr_reader :goals_scored

          sig { params(goals_scored: Integer).void }
          attr_writer :goals_scored

          # Whether this player is team captain
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_captain

          sig { params(is_captain: T::Boolean).void }
          attr_writer :is_captain

          # Discriminator field indicating this is a player
          sig { returns(T.nilable(::Believe::TeamMemberCreateParams::Member::Player::MemberType::OrSymbol)) }
          attr_reader :member_type

          sig { params(member_type: ::Believe::TeamMemberCreateParams::Member::Player::MemberType::OrSymbol).void }
          attr_writer :member_type

          # A football player on the team.
          sig do
            params(
              character_id: String,
              jersey_number: Integer,
              position: ::Believe::Position::OrSymbol,
              team_id: String,
              years_with_team: Integer,
              assists: Integer,
              goals_scored: Integer,
              is_captain: T::Boolean,
              member_type: ::Believe::TeamMemberCreateParams::Member::Player::MemberType::OrSymbol
            )
              .returns(T.attached_class)
          end
          def self.new(
            # ID of the character (references /characters/{id})
          character_id:,
            # Jersey/shirt number
          jersey_number:,
            # Playing position on the field
          position:,
            # ID of the team they belong to
          team_id:,
            # Number of years with the current team
          years_with_team:,
            # Total assists for the team
          assists: nil,
            # Total goals scored for the team
          goals_scored: nil,
            # Whether this player is team captain
          is_captain: nil,
            # Discriminator field indicating this is a player
          member_type: nil
          ); end

          sig do
            override
              .returns(
                {
                  character_id: String,
                  jersey_number: Integer,
                  position: ::Believe::Position::OrSymbol,
                  team_id: String,
                  years_with_team: Integer,
                  assists: Integer,
                  goals_scored: Integer,
                  is_captain: T::Boolean,
                  member_type: ::Believe::TeamMemberCreateParams::Member::Player::MemberType::OrSymbol
                }
              )
          end
          def to_hash; end

          # Discriminator field indicating this is a player
          module MemberType
            extend ::Believe::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, ::Believe::TeamMemberCreateParams::Member::Player::MemberType) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PLAYER = T.let(:player, ::Believe::TeamMemberCreateParams::Member::Player::MemberType::TaggedSymbol)

            sig { override.returns(T::Array[::Believe::TeamMemberCreateParams::Member::Player::MemberType::TaggedSymbol]) }
            def self.values; end
          end
        end

        class Coach < ::Believe::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(::Believe::TeamMemberCreateParams::Member::Coach, ::Believe::Internal::AnyHash) }

          # ID of the character (references /characters/{id})
          sig { returns(String) }
          attr_accessor :character_id

          # Coaching specialty/role
          sig { returns(::Believe::CoachSpecialty::OrSymbol) }
          attr_accessor :specialty

          # ID of the team they belong to
          sig { returns(String) }
          attr_accessor :team_id

          # Number of years with the current team
          sig { returns(Integer) }
          attr_accessor :years_with_team

          # Coaching certifications and licenses
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :certifications

          sig { params(certifications: T::Array[String]).void }
          attr_writer :certifications

          # Discriminator field indicating this is a coach
          sig { returns(T.nilable(::Believe::TeamMemberCreateParams::Member::Coach::MemberType::OrSymbol)) }
          attr_reader :member_type

          sig { params(member_type: ::Believe::TeamMemberCreateParams::Member::Coach::MemberType::OrSymbol).void }
          attr_writer :member_type

          # Career win rate (0.0 to 1.0)
          sig { returns(T.nilable(Float)) }
          attr_accessor :win_rate

          # A coach or coaching staff member.
          sig do
            params(
              character_id: String,
              specialty: ::Believe::CoachSpecialty::OrSymbol,
              team_id: String,
              years_with_team: Integer,
              certifications: T::Array[String],
              member_type: ::Believe::TeamMemberCreateParams::Member::Coach::MemberType::OrSymbol,
              win_rate: T.nilable(Float)
            )
              .returns(T.attached_class)
          end
          def self.new(
            # ID of the character (references /characters/{id})
          character_id:,
            # Coaching specialty/role
          specialty:,
            # ID of the team they belong to
          team_id:,
            # Number of years with the current team
          years_with_team:,
            # Coaching certifications and licenses
          certifications: nil,
            # Discriminator field indicating this is a coach
          member_type: nil,
            # Career win rate (0.0 to 1.0)
          win_rate: nil
          ); end

          sig do
            override
              .returns(
                {
                  character_id: String,
                  specialty: ::Believe::CoachSpecialty::OrSymbol,
                  team_id: String,
                  years_with_team: Integer,
                  certifications: T::Array[String],
                  member_type: ::Believe::TeamMemberCreateParams::Member::Coach::MemberType::OrSymbol,
                  win_rate: T.nilable(Float)
                }
              )
          end
          def to_hash; end

          # Discriminator field indicating this is a coach
          module MemberType
            extend ::Believe::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, ::Believe::TeamMemberCreateParams::Member::Coach::MemberType) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            COACH = T.let(:coach, ::Believe::TeamMemberCreateParams::Member::Coach::MemberType::TaggedSymbol)

            sig { override.returns(T::Array[::Believe::TeamMemberCreateParams::Member::Coach::MemberType::TaggedSymbol]) }
            def self.values; end
          end
        end

        class MedicalStaff < ::Believe::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(::Believe::TeamMemberCreateParams::Member::MedicalStaff, ::Believe::Internal::AnyHash) }

          # ID of the character (references /characters/{id})
          sig { returns(String) }
          attr_accessor :character_id

          # Medical specialty
          sig { returns(::Believe::MedicalSpecialty::OrSymbol) }
          attr_accessor :specialty

          # ID of the team they belong to
          sig { returns(String) }
          attr_accessor :team_id

          # Number of years with the current team
          sig { returns(Integer) }
          attr_accessor :years_with_team

          # Professional license number
          sig { returns(T.nilable(String)) }
          attr_accessor :license_number

          # Discriminator field indicating this is medical staff
          sig { returns(T.nilable(::Believe::TeamMemberCreateParams::Member::MedicalStaff::MemberType::OrSymbol)) }
          attr_reader :member_type

          sig { params(member_type: ::Believe::TeamMemberCreateParams::Member::MedicalStaff::MemberType::OrSymbol).void }
          attr_writer :member_type

          # Medical qualifications and degrees
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :qualifications

          sig { params(qualifications: T::Array[String]).void }
          attr_writer :qualifications

          # Medical and wellness staff member.
          sig do
            params(
              character_id: String,
              specialty: ::Believe::MedicalSpecialty::OrSymbol,
              team_id: String,
              years_with_team: Integer,
              license_number: T.nilable(String),
              member_type: ::Believe::TeamMemberCreateParams::Member::MedicalStaff::MemberType::OrSymbol,
              qualifications: T::Array[String]
            )
              .returns(T.attached_class)
          end
          def self.new(
            # ID of the character (references /characters/{id})
          character_id:,
            # Medical specialty
          specialty:,
            # ID of the team they belong to
          team_id:,
            # Number of years with the current team
          years_with_team:,
            # Professional license number
          license_number: nil,
            # Discriminator field indicating this is medical staff
          member_type: nil,
            # Medical qualifications and degrees
          qualifications: nil
          ); end

          sig do
            override
              .returns(
                {
                  character_id: String,
                  specialty: ::Believe::MedicalSpecialty::OrSymbol,
                  team_id: String,
                  years_with_team: Integer,
                  license_number: T.nilable(String),
                  member_type: ::Believe::TeamMemberCreateParams::Member::MedicalStaff::MemberType::OrSymbol,
                  qualifications: T::Array[String]
                }
              )
          end
          def to_hash; end

          # Discriminator field indicating this is medical staff
          module MemberType
            extend ::Believe::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, ::Believe::TeamMemberCreateParams::Member::MedicalStaff::MemberType) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MEDICAL_STAFF =
              T.let(:medical_staff, ::Believe::TeamMemberCreateParams::Member::MedicalStaff::MemberType::TaggedSymbol)

            sig do
              override
                .returns(T::Array[::Believe::TeamMemberCreateParams::Member::MedicalStaff::MemberType::TaggedSymbol])
            end
            def self.values; end
          end
        end

        class EquipmentManager < ::Believe::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(::Believe::TeamMemberCreateParams::Member::EquipmentManager, ::Believe::Internal::AnyHash) }

          # ID of the character (references /characters/{id})
          sig { returns(String) }
          attr_accessor :character_id

          # ID of the team they belong to
          sig { returns(String) }
          attr_accessor :team_id

          # Number of years with the current team
          sig { returns(Integer) }
          attr_accessor :years_with_team

          # Whether this is the head equipment manager
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_head_kitman

          sig { params(is_head_kitman: T::Boolean).void }
          attr_writer :is_head_kitman

          # Discriminator field indicating this is an equipment manager
          sig { returns(T.nilable(::Believe::TeamMemberCreateParams::Member::EquipmentManager::MemberType::OrSymbol)) }
          attr_reader :member_type

          sig do
            params(member_type: ::Believe::TeamMemberCreateParams::Member::EquipmentManager::MemberType::OrSymbol).void
          end
          attr_writer :member_type

          # List of responsibilities
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :responsibilities

          sig { params(responsibilities: T::Array[String]).void }
          attr_writer :responsibilities

          # Equipment and kit management staff.
          sig do
            params(
              character_id: String,
              team_id: String,
              years_with_team: Integer,
              is_head_kitman: T::Boolean,
              member_type: ::Believe::TeamMemberCreateParams::Member::EquipmentManager::MemberType::OrSymbol,
              responsibilities: T::Array[String]
            )
              .returns(T.attached_class)
          end
          def self.new(
            # ID of the character (references /characters/{id})
          character_id:,
            # ID of the team they belong to
          team_id:,
            # Number of years with the current team
          years_with_team:,
            # Whether this is the head equipment manager
          is_head_kitman: nil,
            # Discriminator field indicating this is an equipment manager
          member_type: nil,
            # List of responsibilities
          responsibilities: nil
          ); end

          sig do
            override
              .returns(
                {
                  character_id: String,
                  team_id: String,
                  years_with_team: Integer,
                  is_head_kitman: T::Boolean,
                  member_type: ::Believe::TeamMemberCreateParams::Member::EquipmentManager::MemberType::OrSymbol,
                  responsibilities: T::Array[String]
                }
              )
          end
          def to_hash; end

          # Discriminator field indicating this is an equipment manager
          module MemberType
            extend ::Believe::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, ::Believe::TeamMemberCreateParams::Member::EquipmentManager::MemberType) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            EQUIPMENT_MANAGER =
              T.let(
                :equipment_manager,
                ::Believe::TeamMemberCreateParams::Member::EquipmentManager::MemberType::TaggedSymbol
              )

            sig do
              override
                .returns(T::Array[::Believe::TeamMemberCreateParams::Member::EquipmentManager::MemberType::TaggedSymbol])
            end
            def self.values; end
          end
        end

        sig { override.returns(T::Array[::Believe::TeamMemberCreateParams::Member::Variants]) }
        def self.variants; end
      end
    end
  end
end
