# typed: strong

module Believe
  module Models
    class Player < ::Believe::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(::Believe::Player, ::Believe::Internal::AnyHash) }

      # Unique identifier for this team membership
      sig { returns(String) }
      attr_accessor :id

      # ID of the character (references /characters/{id})
      sig { returns(String) }
      attr_accessor :character_id

      # Jersey/shirt number
      sig { returns(Integer) }
      attr_accessor :jersey_number

      # Playing position on the field
      sig { returns(::Believe::Position::TaggedSymbol) }
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
      sig { returns(T.nilable(::Believe::Player::MemberType::TaggedSymbol)) }
      attr_reader :member_type

      sig { params(member_type: ::Believe::Player::MemberType::OrSymbol).void }
      attr_writer :member_type

      # Full player model with ID.
      sig do
        params(
          id: String,
          character_id: String,
          jersey_number: Integer,
          position: ::Believe::Position::OrSymbol,
          team_id: String,
          years_with_team: Integer,
          assists: Integer,
          goals_scored: Integer,
          is_captain: T::Boolean,
          member_type: ::Believe::Player::MemberType::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for this team membership
      id:,
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
              id: String,
              character_id: String,
              jersey_number: Integer,
              position: ::Believe::Position::TaggedSymbol,
              team_id: String,
              years_with_team: Integer,
              assists: Integer,
              goals_scored: Integer,
              is_captain: T::Boolean,
              member_type: ::Believe::Player::MemberType::TaggedSymbol
            }
          )
      end
      def to_hash; end

      # Discriminator field indicating this is a player
      module MemberType
        extend ::Believe::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, ::Believe::Player::MemberType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PLAYER = T.let(:player, ::Believe::Player::MemberType::TaggedSymbol)

        sig { override.returns(T::Array[::Believe::Player::MemberType::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
