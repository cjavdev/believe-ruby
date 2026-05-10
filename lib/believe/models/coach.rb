# frozen_string_literal: true

module Believe
  module Models
    # @see ::Believe::Resources::TeamMembers#list_coaches
    class Coach < ::Believe::Internal::Type::BaseModel
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
      #   Coaching specialty/role
      #
      #   @return [Symbol, ::Believe::Models::CoachSpecialty]
      required :specialty, enum: -> { ::Believe::CoachSpecialty }

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
      optional :certifications, ::Believe::Internal::Type::ArrayOf[String]

      # @!attribute member_type
      #   Discriminator field indicating this is a coach
      #
      #   @return [Symbol, ::Believe::Models::Coach::MemberType, nil]
      optional :member_type, enum: -> { ::Believe::Coach::MemberType }

      # @!attribute win_rate
      #   Career win rate (0.0 to 1.0)
      #
      #   @return [Float, nil]
      optional :win_rate, Float, nil?: true

      # @!method initialize(id:, character_id:, specialty:, team_id:, years_with_team:, certifications: nil, member_type: nil, win_rate: nil)
      #   Full coach model with ID.
      #
      #   @param id [String] Unique identifier for this team membership
      #
      #   @param character_id [String] ID of the character (references /characters/{id})
      #
      #   @param specialty [Symbol, ::Believe::Models::CoachSpecialty] Coaching specialty/role
      #
      #   @param team_id [String] ID of the team they belong to
      #
      #   @param years_with_team [Integer] Number of years with the current team
      #
      #   @param certifications [Array<String>] Coaching certifications and licenses
      #
      #   @param member_type [Symbol, ::Believe::Models::Coach::MemberType] Discriminator field indicating this is a coach
      #
      #   @param win_rate [Float, nil] Career win rate (0.0 to 1.0)

      # Discriminator field indicating this is a coach
      #
      # @see ::Believe::Models::Coach#member_type
      module MemberType
        extend ::Believe::Internal::Type::Enum

        COACH = :coach

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
