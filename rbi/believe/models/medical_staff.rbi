# typed: strong

module Believe
  module Models
    class MedicalStaff < ::Believe::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(::Believe::MedicalStaff, ::Believe::Internal::AnyHash) }

      # Unique identifier for this team membership
      sig { returns(String) }
      attr_accessor :id

      # ID of the character (references /characters/{id})
      sig { returns(String) }
      attr_accessor :character_id

      # Medical specialty
      sig { returns(::Believe::MedicalSpecialty::TaggedSymbol) }
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
      sig { returns(T.nilable(::Believe::MedicalStaff::MemberType::TaggedSymbol)) }
      attr_reader :member_type

      sig { params(member_type: ::Believe::MedicalStaff::MemberType::OrSymbol).void }
      attr_writer :member_type

      # Medical qualifications and degrees
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :qualifications

      sig { params(qualifications: T::Array[String]).void }
      attr_writer :qualifications

      # Full medical staff model with ID.
      sig do
        params(
          id: String,
          character_id: String,
          specialty: ::Believe::MedicalSpecialty::OrSymbol,
          team_id: String,
          years_with_team: Integer,
          license_number: T.nilable(String),
          member_type: ::Believe::MedicalStaff::MemberType::OrSymbol,
          qualifications: T::Array[String]
        )
          .returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for this team membership
      id:,
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
              id: String,
              character_id: String,
              specialty: ::Believe::MedicalSpecialty::TaggedSymbol,
              team_id: String,
              years_with_team: Integer,
              license_number: T.nilable(String),
              member_type: ::Believe::MedicalStaff::MemberType::TaggedSymbol,
              qualifications: T::Array[String]
            }
          )
      end
      def to_hash; end

      # Discriminator field indicating this is medical staff
      module MemberType
        extend ::Believe::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ::Believe::MedicalStaff::MemberType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MEDICAL_STAFF = T.let(:medical_staff, ::Believe::MedicalStaff::MemberType::TaggedSymbol)

        sig { override.returns(T::Array[::Believe::MedicalStaff::MemberType::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
