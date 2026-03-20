# typed: strong

module Believe
  module Models
    class TeamMemberUpdateParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(::Believe::TeamMemberUpdateParams, ::Believe::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :member_id

      # Update model for players.
      sig do
        returns(
          T.any(
            ::Believe::TeamMemberUpdateParams::Updates::PlayerUpdate,
            ::Believe::TeamMemberUpdateParams::Updates::CoachUpdate,
            ::Believe::TeamMemberUpdateParams::Updates::MedicalStaffUpdate,
            ::Believe::TeamMemberUpdateParams::Updates::EquipmentManagerUpdate
          )
        )
      end
      attr_accessor :updates

      sig do
        params(
          member_id: String,
          updates:
            T.any(
              ::Believe::TeamMemberUpdateParams::Updates::PlayerUpdate::OrHash,
              ::Believe::TeamMemberUpdateParams::Updates::CoachUpdate::OrHash,
              ::Believe::TeamMemberUpdateParams::Updates::MedicalStaffUpdate::OrHash,
              ::Believe::TeamMemberUpdateParams::Updates::EquipmentManagerUpdate::OrHash
            ),
          request_options: ::Believe::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        member_id:,
        # Update model for players.
        updates:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            member_id: String,
            updates:
              T.any(
                ::Believe::TeamMemberUpdateParams::Updates::PlayerUpdate,
                ::Believe::TeamMemberUpdateParams::Updates::CoachUpdate,
                ::Believe::TeamMemberUpdateParams::Updates::MedicalStaffUpdate,
                ::Believe::TeamMemberUpdateParams::Updates::EquipmentManagerUpdate
              ),
            request_options: ::Believe::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Update model for players.
      module Updates
        extend ::Believe::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              ::Believe::TeamMemberUpdateParams::Updates::PlayerUpdate,
              ::Believe::TeamMemberUpdateParams::Updates::CoachUpdate,
              ::Believe::TeamMemberUpdateParams::Updates::MedicalStaffUpdate,
              ::Believe::TeamMemberUpdateParams::Updates::EquipmentManagerUpdate
            )
          end

        class PlayerUpdate < ::Believe::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                ::Believe::TeamMemberUpdateParams::Updates::PlayerUpdate,
                ::Believe::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_accessor :assists

          sig { returns(T.nilable(Integer)) }
          attr_accessor :goals_scored

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :is_captain

          sig { returns(T.nilable(Integer)) }
          attr_accessor :jersey_number

          # Football positions for players.
          sig { returns(T.nilable(::Believe::Position::OrSymbol)) }
          attr_accessor :position

          sig { returns(T.nilable(String)) }
          attr_accessor :team_id

          sig { returns(T.nilable(Integer)) }
          attr_accessor :years_with_team

          # Update model for players.
          sig do
            params(
              assists: T.nilable(Integer),
              goals_scored: T.nilable(Integer),
              is_captain: T.nilable(T::Boolean),
              jersey_number: T.nilable(Integer),
              position: T.nilable(::Believe::Position::OrSymbol),
              team_id: T.nilable(String),
              years_with_team: T.nilable(Integer)
            ).returns(T.attached_class)
          end
          def self.new(
            assists: nil,
            goals_scored: nil,
            is_captain: nil,
            jersey_number: nil,
            # Football positions for players.
            position: nil,
            team_id: nil,
            years_with_team: nil
          )
          end

          sig do
            override.returns(
              {
                assists: T.nilable(Integer),
                goals_scored: T.nilable(Integer),
                is_captain: T.nilable(T::Boolean),
                jersey_number: T.nilable(Integer),
                position: T.nilable(::Believe::Position::OrSymbol),
                team_id: T.nilable(String),
                years_with_team: T.nilable(Integer)
              }
            )
          end
          def to_hash
          end
        end

        class CoachUpdate < ::Believe::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                ::Believe::TeamMemberUpdateParams::Updates::CoachUpdate,
                ::Believe::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :certifications

          # Coaching specialties.
          sig { returns(T.nilable(::Believe::CoachSpecialty::OrSymbol)) }
          attr_accessor :specialty

          sig { returns(T.nilable(String)) }
          attr_accessor :team_id

          sig { returns(T.nilable(Float)) }
          attr_accessor :win_rate

          sig { returns(T.nilable(Integer)) }
          attr_accessor :years_with_team

          # Update model for coaches.
          sig do
            params(
              certifications: T.nilable(T::Array[String]),
              specialty: T.nilable(::Believe::CoachSpecialty::OrSymbol),
              team_id: T.nilable(String),
              win_rate: T.nilable(Float),
              years_with_team: T.nilable(Integer)
            ).returns(T.attached_class)
          end
          def self.new(
            certifications: nil,
            # Coaching specialties.
            specialty: nil,
            team_id: nil,
            win_rate: nil,
            years_with_team: nil
          )
          end

          sig do
            override.returns(
              {
                certifications: T.nilable(T::Array[String]),
                specialty: T.nilable(::Believe::CoachSpecialty::OrSymbol),
                team_id: T.nilable(String),
                win_rate: T.nilable(Float),
                years_with_team: T.nilable(Integer)
              }
            )
          end
          def to_hash
          end
        end

        class MedicalStaffUpdate < ::Believe::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                ::Believe::TeamMemberUpdateParams::Updates::MedicalStaffUpdate,
                ::Believe::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_accessor :license_number

          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :qualifications

          # Medical staff specialties.
          sig { returns(T.nilable(::Believe::MedicalSpecialty::OrSymbol)) }
          attr_accessor :specialty

          sig { returns(T.nilable(String)) }
          attr_accessor :team_id

          sig { returns(T.nilable(Integer)) }
          attr_accessor :years_with_team

          # Update model for medical staff.
          sig do
            params(
              license_number: T.nilable(String),
              qualifications: T.nilable(T::Array[String]),
              specialty: T.nilable(::Believe::MedicalSpecialty::OrSymbol),
              team_id: T.nilable(String),
              years_with_team: T.nilable(Integer)
            ).returns(T.attached_class)
          end
          def self.new(
            license_number: nil,
            qualifications: nil,
            # Medical staff specialties.
            specialty: nil,
            team_id: nil,
            years_with_team: nil
          )
          end

          sig do
            override.returns(
              {
                license_number: T.nilable(String),
                qualifications: T.nilable(T::Array[String]),
                specialty: T.nilable(::Believe::MedicalSpecialty::OrSymbol),
                team_id: T.nilable(String),
                years_with_team: T.nilable(Integer)
              }
            )
          end
          def to_hash
          end
        end

        class EquipmentManagerUpdate < ::Believe::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                ::Believe::TeamMemberUpdateParams::Updates::EquipmentManagerUpdate,
                ::Believe::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :is_head_kitman

          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :responsibilities

          sig { returns(T.nilable(String)) }
          attr_accessor :team_id

          sig { returns(T.nilable(Integer)) }
          attr_accessor :years_with_team

          # Update model for equipment managers.
          sig do
            params(
              is_head_kitman: T.nilable(T::Boolean),
              responsibilities: T.nilable(T::Array[String]),
              team_id: T.nilable(String),
              years_with_team: T.nilable(Integer)
            ).returns(T.attached_class)
          end
          def self.new(
            is_head_kitman: nil,
            responsibilities: nil,
            team_id: nil,
            years_with_team: nil
          )
          end

          sig do
            override.returns(
              {
                is_head_kitman: T.nilable(T::Boolean),
                responsibilities: T.nilable(T::Array[String]),
                team_id: T.nilable(String),
                years_with_team: T.nilable(Integer)
              }
            )
          end
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[::Believe::TeamMemberUpdateParams::Updates::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
