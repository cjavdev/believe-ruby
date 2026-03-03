# typed: strong

module Believe
  module Resources
    # Operations related to Ted Lasso characters
    class Characters
      # Add a new character to the Ted Lasso universe.
      sig do
        params(
          background: String,
          emotional_stats: Believe::EmotionalStats::OrHash,
          name: String,
          personality_traits: T::Array[String],
          role: Believe::CharacterRole::OrSymbol,
          date_of_birth: T.nilable(Date),
          email: T.nilable(String),
          growth_arcs: T::Array[Believe::GrowthArc::OrHash],
          height_meters: T.nilable(Float),
          profile_image_url: T.nilable(String),
          salary_gbp:
            T.nilable(Believe::CharacterCreateParams::SalaryGbp::Variants),
          signature_quotes: T::Array[String],
          team_id: T.nilable(String),
          request_options: Believe::RequestOptions::OrHash
        ).returns(Believe::Character)
      end
      def create(
        # Character background and history
        background:,
        # Emotional intelligence stats
        emotional_stats:,
        # Character's full name
        name:,
        # Key personality traits
        personality_traits:,
        # Character's role
        role:,
        # Character's date of birth
        date_of_birth: nil,
        # Character's email address
        email: nil,
        # Character development across seasons
        growth_arcs: nil,
        # Height in meters
        height_meters: nil,
        # URL to character's profile image
        profile_image_url: nil,
        # Annual salary in GBP
        salary_gbp: nil,
        # Memorable quotes from this character
        signature_quotes: nil,
        # ID of the team they belong to
        team_id: nil,
        request_options: {}
      )
      end

      # Retrieve detailed information about a specific character.
      sig do
        params(
          character_id: String,
          request_options: Believe::RequestOptions::OrHash
        ).returns(Believe::Character)
      end
      def retrieve(character_id, request_options: {})
      end

      # Update specific fields of an existing character.
      sig do
        params(
          character_id: String,
          background: T.nilable(String),
          date_of_birth: T.nilable(Date),
          email: T.nilable(String),
          emotional_stats: T.nilable(Believe::EmotionalStats::OrHash),
          growth_arcs: T.nilable(T::Array[Believe::GrowthArc::OrHash]),
          height_meters: T.nilable(Float),
          name: T.nilable(String),
          personality_traits: T.nilable(T::Array[String]),
          profile_image_url: T.nilable(String),
          role: T.nilable(Believe::CharacterRole::OrSymbol),
          salary_gbp:
            T.nilable(Believe::CharacterUpdateParams::SalaryGbp::Variants),
          signature_quotes: T.nilable(T::Array[String]),
          team_id: T.nilable(String),
          request_options: Believe::RequestOptions::OrHash
        ).returns(Believe::Character)
      end
      def update(
        character_id,
        background: nil,
        date_of_birth: nil,
        email: nil,
        # Emotional intelligence statistics for a character.
        emotional_stats: nil,
        growth_arcs: nil,
        height_meters: nil,
        name: nil,
        personality_traits: nil,
        profile_image_url: nil,
        # Roles characters can have.
        role: nil,
        salary_gbp: nil,
        signature_quotes: nil,
        team_id: nil,
        request_options: {}
      )
      end

      # Get a paginated list of Ted Lasso characters.
      sig do
        params(
          limit: Integer,
          min_optimism: T.nilable(Integer),
          role: T.nilable(Believe::CharacterRole::OrSymbol),
          skip: Integer,
          team_id: T.nilable(String),
          request_options: Believe::RequestOptions::OrHash
        ).returns(Believe::Internal::SkipLimitPage[Believe::Character])
      end
      def list(
        # Maximum number of items to return (max: 100)
        limit: nil,
        # Minimum optimism score
        min_optimism: nil,
        # Filter by role
        role: nil,
        # Number of items to skip (offset)
        skip: nil,
        # Filter by team ID
        team_id: nil,
        request_options: {}
      )
      end

      # Remove a character from the database.
      sig do
        params(
          character_id: String,
          request_options: Believe::RequestOptions::OrHash
        ).void
      end
      def delete(character_id, request_options: {})
      end

      # Get all signature quotes from a specific character.
      sig do
        params(
          character_id: String,
          request_options: Believe::RequestOptions::OrHash
        ).returns(T::Array[String])
      end
      def get_quotes(character_id, request_options: {})
      end

      # @api private
      sig { params(client: Believe::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
