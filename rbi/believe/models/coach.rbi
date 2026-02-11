# typed: strong

module Believe
  module Models
    class Coach < Believe::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Believe::Coach, Believe::Internal::AnyHash) }

      # Unique identifier for this team membership
      sig { returns(String) }
      attr_accessor :id

      # ID of the character (references /characters/{id})
      sig { returns(String) }
      attr_accessor :character_id

      # Coaching specialty/role
      sig { returns(Believe::CoachSpecialty::TaggedSymbol) }
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
      sig { returns(T.nilable(Believe::Coach::MemberType::TaggedSymbol)) }
      attr_reader :member_type

      sig { params(member_type: Believe::Coach::MemberType::OrSymbol).void }
      attr_writer :member_type

      # Career win rate (0.0 to 1.0)
      sig { returns(T.nilable(Float)) }
      attr_accessor :win_rate

      # Full coach model with ID.
      sig do
        params(
          id: String,
          character_id: String,
          specialty: Believe::CoachSpecialty::OrSymbol,
          team_id: String,
          years_with_team: Integer,
          certifications: T::Array[String],
          member_type: Believe::Coach::MemberType::OrSymbol,
          win_rate: T.nilable(Float)
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for this team membership
        id:,
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
      )
      end

      sig do
        override.returns(
          {
            id: String,
            character_id: String,
            specialty: Believe::CoachSpecialty::TaggedSymbol,
            team_id: String,
            years_with_team: Integer,
            certifications: T::Array[String],
            member_type: Believe::Coach::MemberType::TaggedSymbol,
            win_rate: T.nilable(Float)
          }
        )
      end
      def to_hash
      end

      # Discriminator field indicating this is a coach
      module MemberType
        extend Believe::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Believe::Coach::MemberType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        COACH = T.let(:coach, Believe::Coach::MemberType::TaggedSymbol)

        sig do
          override.returns(T::Array[Believe::Coach::MemberType::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
