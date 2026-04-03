# typed: strong

module Believe
  module Resources
    class Matches
      # Server-Sent Events (SSE) streaming endpoints
      sig { returns(::Believe::Resources::Matches::Commentary) }
      attr_reader :commentary

      # Schedule a new match.
      sig do
        params(
          away_team_id: String,
          date: Time,
          home_team_id: String,
          match_type: ::Believe::MatchType::OrSymbol,
          attendance: T.nilable(Integer),
          away_score: Integer,
          episode_id: T.nilable(String),
          home_score: Integer,
          lesson_learned: T.nilable(String),
          possession_percentage: T.nilable(Float),
          result: ::Believe::MatchResult::OrSymbol,
          ted_halftime_speech: T.nilable(String),
          ticket_revenue_gbp:
            T.nilable(::Believe::MatchCreateParams::TicketRevenueGbp::Variants),
          turning_points: T::Array[::Believe::TurningPoint::OrHash],
          weather_temp_celsius: T.nilable(Float),
          request_options: ::Believe::RequestOptions::OrHash
        ).returns(::Believe::Match)
      end
      def create(
        # Away team ID
        away_team_id:,
        # Match date and time
        date:,
        # Home team ID
        home_team_id:,
        # Type of match
        match_type:,
        # Match attendance
        attendance: nil,
        # Away team score
        away_score: nil,
        # Episode ID where this match is featured
        episode_id: nil,
        # Home team score
        home_score: nil,
        # The life lesson learned from this match
        lesson_learned: nil,
        # Home team possession percentage
        possession_percentage: nil,
        # Match result from home team perspective
        result: nil,
        # Ted's inspirational halftime speech
        ted_halftime_speech: nil,
        # Total ticket revenue in GBP
        ticket_revenue_gbp: nil,
        # Key moments that changed the match
        turning_points: nil,
        # Temperature at kickoff in Celsius
        weather_temp_celsius: nil,
        request_options: {}
      )
      end

      # Retrieve detailed information about a specific match.
      sig do
        params(
          match_id: String,
          request_options: ::Believe::RequestOptions::OrHash
        ).returns(::Believe::Match)
      end
      def retrieve(match_id, request_options: {})
      end

      # Update specific fields of an existing match (e.g., update score).
      sig do
        params(
          match_id: String,
          attendance: T.nilable(Integer),
          away_score: T.nilable(Integer),
          away_team_id: T.nilable(String),
          date: T.nilable(Time),
          episode_id: T.nilable(String),
          home_score: T.nilable(Integer),
          home_team_id: T.nilable(String),
          lesson_learned: T.nilable(String),
          match_type: T.nilable(::Believe::MatchType::OrSymbol),
          possession_percentage: T.nilable(Float),
          result: T.nilable(::Believe::MatchResult::OrSymbol),
          ted_halftime_speech: T.nilable(String),
          ticket_revenue_gbp:
            T.nilable(::Believe::MatchUpdateParams::TicketRevenueGbp::Variants),
          turning_points: T.nilable(T::Array[::Believe::TurningPoint::OrHash]),
          weather_temp_celsius: T.nilable(Float),
          request_options: ::Believe::RequestOptions::OrHash
        ).returns(::Believe::Match)
      end
      def update(
        match_id,
        attendance: nil,
        away_score: nil,
        away_team_id: nil,
        date: nil,
        episode_id: nil,
        home_score: nil,
        home_team_id: nil,
        lesson_learned: nil,
        # Types of matches.
        match_type: nil,
        possession_percentage: nil,
        # Match result types.
        result: nil,
        ted_halftime_speech: nil,
        ticket_revenue_gbp: nil,
        turning_points: nil,
        weather_temp_celsius: nil,
        request_options: {}
      )
      end

      # Get a paginated list of all matches with optional filtering.
      sig do
        params(
          limit: Integer,
          match_type: T.nilable(::Believe::MatchType::OrSymbol),
          result: T.nilable(::Believe::MatchResult::OrSymbol),
          skip: Integer,
          team_id: T.nilable(String),
          request_options: ::Believe::RequestOptions::OrHash
        ).returns(::Believe::Internal::SkipLimitPage[::Believe::Match])
      end
      def list(
        # Maximum number of items to return (max: 100)
        limit: nil,
        # Filter by match type
        match_type: nil,
        # Filter by result
        result: nil,
        # Number of items to skip (offset)
        skip: nil,
        # Filter by team (home or away)
        team_id: nil,
        request_options: {}
      )
      end

      # Remove a match from the database.
      sig do
        params(
          match_id: String,
          request_options: ::Believe::RequestOptions::OrHash
        ).void
      end
      def delete(match_id, request_options: {})
      end

      # Get the life lesson learned from a specific match.
      sig do
        params(
          match_id: String,
          request_options: ::Believe::RequestOptions::OrHash
        ).returns(T::Hash[Symbol, T.anything])
      end
      def get_lesson(match_id, request_options: {})
      end

      # Get all turning points from a specific match.
      sig do
        params(
          match_id: String,
          request_options: ::Believe::RequestOptions::OrHash
        ).returns(T::Array[T::Hash[Symbol, T.anything]])
      end
      def get_turning_points(match_id, request_options: {})
      end

      # WebSocket endpoint for real-time live match simulation.
      #
      # Connect to receive a stream of match events as they happen in a simulated
      # football match.
      #
      # ## Connection
      #
      # Connect via WebSocket with optional query parameters to customize the
      # simulation.
      #
      # ## Example WebSocket URL
      #
      # ```
      # ws://localhost:8000/matches/live?home_team=AFC%20Richmond&away_team=Manchester%20City&speed=2.0&excitement_level=7
      # ```
      #
      # ## Server Messages
      #
      # The server sends JSON messages with these types:
      #
      # - `match_start` - When the match begins
      # - `match_event` - For each match event (goals, fouls, cards, etc.)
      # - `match_end` - When the match concludes
      # - `error` - If an error occurs
      # - `pong` - Response to client ping
      #
      # ## Client Messages
      #
      # Send JSON to control the simulation:
      #
      # - `{"action": "ping"}` - Keep-alive, server responds with `{"type": "pong"}`
      # - `{"action": "pause"}` - Pause the simulation
      # - `{"action": "resume"}` - Resume a paused simulation
      # - `{"action": "set_speed", "speed": 2.0}` - Change playback speed (0.1-10.0)
      # - `{"action": "get_status"}` - Request current match status
      sig do
        params(
          away_team: String,
          excitement_level: Integer,
          home_team: String,
          speed: Float,
          request_options: ::Believe::RequestOptions::OrHash
        ).void
      end
      def stream_live(
        # Away team name
        away_team: nil,
        # How eventful the match should be (1=boring, 10=chaos)
        excitement_level: nil,
        # Home team name
        home_team: nil,
        # Simulation speed multiplier (1.0 = real-time)
        speed: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: ::Believe::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
