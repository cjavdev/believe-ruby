# frozen_string_literal: true

module Believe
  module Models
    # @see ::Believe::Resources::TeamMembers#list_players
    class Player < ::Believe::Internal::Type::BaseModel
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

      # @!attribute jersey_number
      #   Jersey/shirt number
      #
      #   @return [Integer]
      required :jersey_number, Integer

      # @!attribute position
      #   Playing position on the field
      #
      #   @return [Symbol, ::Believe::Models::Position]
      required :position, enum: -> { ::Believe::Position }

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
      optional :is_captain, ::Believe::Internal::Type::Boolean

      # @!attribute member_type
      #   Discriminator field indicating this is a player
      #
      #   @return [Symbol, ::Believe::Models::Player::MemberType, nil]
      optional :member_type, enum: -> { ::Believe::Player::MemberType }

      # @!method initialize(id:, character_id:, jersey_number:, position:, team_id:, years_with_team:, assists: nil, goals_scored: nil, is_captain: nil, member_type: nil)
      #   Full player model with ID.
      #
      #   @param id [String] Unique identifier for this team membership
      #
      #   @param character_id [String] ID of the character (references /characters/{id})
      #
      #   @param jersey_number [Integer] Jersey/shirt number
      #
      #   @param position [Symbol, ::Believe::Models::Position] Playing position on the field
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
      #   @param member_type [Symbol, ::Believe::Models::Player::MemberType] Discriminator field indicating this is a player

      # Discriminator field indicating this is a player
      #
      # @see ::Believe::Models::Player#member_type
      module MemberType
        extend ::Believe::Internal::Type::Enum

        PLAYER = :player

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
