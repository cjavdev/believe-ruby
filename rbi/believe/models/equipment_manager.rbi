# typed: strong

module Believe
  module Models
    class EquipmentManager < ::Believe::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(::Believe::EquipmentManager, ::Believe::Internal::AnyHash) }

      # Unique identifier for this team membership
      sig { returns(String) }
      attr_accessor :id

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
      sig { returns(T.nilable(::Believe::EquipmentManager::MemberType::TaggedSymbol)) }
      attr_reader :member_type

      sig { params(member_type: ::Believe::EquipmentManager::MemberType::OrSymbol).void }
      attr_writer :member_type

      # List of responsibilities
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :responsibilities

      sig { params(responsibilities: T::Array[String]).void }
      attr_writer :responsibilities

      # Full equipment manager model with ID.
      sig do
        params(
          id: String,
          character_id: String,
          team_id: String,
          years_with_team: Integer,
          is_head_kitman: T::Boolean,
          member_type: ::Believe::EquipmentManager::MemberType::OrSymbol,
          responsibilities: T::Array[String]
        )
          .returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for this team membership
      id:,
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
              id: String,
              character_id: String,
              team_id: String,
              years_with_team: Integer,
              is_head_kitman: T::Boolean,
              member_type: ::Believe::EquipmentManager::MemberType::TaggedSymbol,
              responsibilities: T::Array[String]
            }
          )
      end
      def to_hash; end

      # Discriminator field indicating this is an equipment manager
      module MemberType
        extend ::Believe::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ::Believe::EquipmentManager::MemberType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EQUIPMENT_MANAGER = T.let(:equipment_manager, ::Believe::EquipmentManager::MemberType::TaggedSymbol)

        sig { override.returns(T::Array[::Believe::EquipmentManager::MemberType::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
