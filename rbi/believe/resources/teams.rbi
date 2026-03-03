# typed: strong

module Believe
  module Resources
    # Operations related to football teams
    class Teams
      # Operations related to football teams
      sig { returns(Believe::Resources::Teams::Logo) }
      attr_reader :logo

      # Add a new team to the league.
      sig do
        params(
          culture_score: Integer,
          founded_year: Integer,
          league: Believe::League::OrSymbol,
          name: String,
          stadium: String,
          values: Believe::TeamValues::OrHash,
          annual_budget_gbp:
            T.nilable(Believe::TeamCreateParams::AnnualBudgetGbp::Variants),
          average_attendance: T.nilable(Float),
          contact_email: T.nilable(String),
          is_active: T::Boolean,
          nickname: T.nilable(String),
          primary_color: T.nilable(String),
          rival_teams: T::Array[String],
          secondary_color: T.nilable(String),
          stadium_location: T.nilable(Believe::GeoLocation::OrHash),
          website: T.nilable(String),
          win_percentage: T.nilable(Float),
          request_options: Believe::RequestOptions::OrHash
        ).returns(Believe::Team)
      end
      def create(
        # Team culture/morale score (0-100)
        culture_score:,
        # Year the club was founded
        founded_year:,
        # Current league
        league:,
        # Team name
        name:,
        # Home stadium name
        stadium:,
        # Team's core values
        values:,
        # Annual budget in GBP
        annual_budget_gbp: nil,
        # Average match attendance
        average_attendance: nil,
        # Team contact email
        contact_email: nil,
        # Whether the team is currently active
        is_active: nil,
        # Team nickname
        nickname: nil,
        # Primary team color (hex)
        primary_color: nil,
        # List of rival team IDs
        rival_teams: nil,
        # Secondary team color (hex)
        secondary_color: nil,
        # Geographic coordinates for a location.
        stadium_location: nil,
        # Official team website
        website: nil,
        # Season win percentage
        win_percentage: nil,
        request_options: {}
      )
      end

      # Retrieve detailed information about a specific team.
      sig do
        params(
          team_id: String,
          request_options: Believe::RequestOptions::OrHash
        ).returns(Believe::Team)
      end
      def retrieve(team_id, request_options: {})
      end

      # Update specific fields of an existing team.
      sig do
        params(
          team_id: String,
          annual_budget_gbp:
            T.nilable(Believe::TeamUpdateParams::AnnualBudgetGbp::Variants),
          average_attendance: T.nilable(Float),
          contact_email: T.nilable(String),
          culture_score: T.nilable(Integer),
          founded_year: T.nilable(Integer),
          is_active: T.nilable(T::Boolean),
          league: T.nilable(Believe::League::OrSymbol),
          name: T.nilable(String),
          nickname: T.nilable(String),
          primary_color: T.nilable(String),
          rival_teams: T.nilable(T::Array[String]),
          secondary_color: T.nilable(String),
          stadium: T.nilable(String),
          stadium_location: T.nilable(Believe::GeoLocation::OrHash),
          values: T.nilable(Believe::TeamValues::OrHash),
          website: T.nilable(String),
          win_percentage: T.nilable(Float),
          request_options: Believe::RequestOptions::OrHash
        ).returns(Believe::Team)
      end
      def update(
        team_id,
        annual_budget_gbp: nil,
        average_attendance: nil,
        contact_email: nil,
        culture_score: nil,
        founded_year: nil,
        is_active: nil,
        # Football leagues.
        league: nil,
        name: nil,
        nickname: nil,
        primary_color: nil,
        rival_teams: nil,
        secondary_color: nil,
        stadium: nil,
        # Geographic coordinates for a location.
        stadium_location: nil,
        # Core values that define a team's culture.
        values: nil,
        website: nil,
        win_percentage: nil,
        request_options: {}
      )
      end

      # Get a paginated list of all teams with optional filtering by league or culture
      # score.
      sig do
        params(
          league: T.nilable(Believe::League::OrSymbol),
          limit: Integer,
          min_culture_score: T.nilable(Integer),
          skip: Integer,
          request_options: Believe::RequestOptions::OrHash
        ).returns(Believe::Internal::SkipLimitPage[Believe::Team])
      end
      def list(
        # Filter by league
        league: nil,
        # Maximum number of items to return (max: 100)
        limit: nil,
        # Minimum culture score
        min_culture_score: nil,
        # Number of items to skip (offset)
        skip: nil,
        request_options: {}
      )
      end

      # Remove a team from the database (relegation to oblivion).
      sig do
        params(
          team_id: String,
          request_options: Believe::RequestOptions::OrHash
        ).void
      end
      def delete(team_id, request_options: {})
      end

      # Get detailed culture and values information for a team.
      sig do
        params(
          team_id: String,
          request_options: Believe::RequestOptions::OrHash
        ).returns(T::Hash[Symbol, T.anything])
      end
      def get_culture(team_id, request_options: {})
      end

      # Get all rival teams for a specific team.
      sig do
        params(
          team_id: String,
          request_options: Believe::RequestOptions::OrHash
        ).returns(T::Array[Believe::Team])
      end
      def get_rivals(team_id, request_options: {})
      end

      # List all uploaded logos for a team.
      sig do
        params(
          team_id: String,
          request_options: Believe::RequestOptions::OrHash
        ).returns(T::Array[Believe::Teams::FileUpload])
      end
      def list_logos(team_id, request_options: {})
      end

      # @api private
      sig { params(client: Believe::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
