# frozen_string_literal: true

module Believe
  module Resources
    class Matches
      # @return [Believe::Resources::Matches::Commentary]
      attr_reader :commentary

      # Schedule a new match.
      #
      # @overload create(away_team_id:, date:, home_team_id:, match_type:, attendance: nil, away_score: nil, episode_id: nil, home_score: nil, lesson_learned: nil, possession_percentage: nil, result: nil, ted_halftime_speech: nil, ticket_revenue_gbp: nil, turning_points: nil, weather_temp_celsius: nil, request_options: {})
      #
      # @param away_team_id [String] Away team ID
      #
      # @param date [Time] Match date and time
      #
      # @param home_team_id [String] Home team ID
      #
      # @param match_type [Symbol, Believe::Models::MatchType] Type of match
      #
      # @param attendance [Integer, nil] Match attendance
      #
      # @param away_score [Integer] Away team score
      #
      # @param episode_id [String, nil] Episode ID where this match is featured
      #
      # @param home_score [Integer] Home team score
      #
      # @param lesson_learned [String, nil] The life lesson learned from this match
      #
      # @param possession_percentage [Float, nil] Home team possession percentage
      #
      # @param result [Symbol, Believe::Models::MatchResult] Match result from home team perspective
      #
      # @param ted_halftime_speech [String, nil] Ted's inspirational halftime speech
      #
      # @param ticket_revenue_gbp [Float, String, nil] Total ticket revenue in GBP
      #
      # @param turning_points [Array<Believe::Models::TurningPoint>] Key moments that changed the match
      #
      # @param weather_temp_celsius [Float, nil] Temperature at kickoff in Celsius
      #
      # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Believe::Models::Match]
      #
      # @see Believe::Models::MatchCreateParams
      def create(params)
        parsed, options = Believe::MatchCreateParams.dump_request(params)
        @client.request(method: :post, path: "matches", body: parsed, model: Believe::Match, options: options)
      end

      # Retrieve detailed information about a specific match.
      #
      # @overload retrieve(match_id, request_options: {})
      #
      # @param match_id [String]
      # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Believe::Models::Match]
      #
      # @see Believe::Models::MatchRetrieveParams
      def retrieve(match_id, params = {})
        @client.request(
          method: :get,
          path: ["matches/%1$s", match_id],
          model: Believe::Match,
          options: params[:request_options]
        )
      end

      # Update specific fields of an existing match (e.g., update score).
      #
      # @overload update(match_id, attendance: nil, away_score: nil, away_team_id: nil, date: nil, episode_id: nil, home_score: nil, home_team_id: nil, lesson_learned: nil, match_type: nil, possession_percentage: nil, result: nil, ted_halftime_speech: nil, ticket_revenue_gbp: nil, turning_points: nil, weather_temp_celsius: nil, request_options: {})
      #
      # @param match_id [String]
      #
      # @param attendance [Integer, nil]
      #
      # @param away_score [Integer, nil]
      #
      # @param away_team_id [String, nil]
      #
      # @param date [Time, nil]
      #
      # @param episode_id [String, nil]
      #
      # @param home_score [Integer, nil]
      #
      # @param home_team_id [String, nil]
      #
      # @param lesson_learned [String, nil]
      #
      # @param match_type [Symbol, Believe::Models::MatchType, nil] Types of matches.
      #
      # @param possession_percentage [Float, nil]
      #
      # @param result [Symbol, Believe::Models::MatchResult, nil] Match result types.
      #
      # @param ted_halftime_speech [String, nil]
      #
      # @param ticket_revenue_gbp [Float, String, nil]
      #
      # @param turning_points [Array<Believe::Models::TurningPoint>, nil]
      #
      # @param weather_temp_celsius [Float, nil]
      #
      # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Believe::Models::Match]
      #
      # @see Believe::Models::MatchUpdateParams
      def update(match_id, params = {})
        parsed, options = Believe::MatchUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["matches/%1$s", match_id],
          body: parsed,
          model: Believe::Match,
          options: options
        )
      end

      # Get a paginated list of all matches with optional filtering.
      #
      # @overload list(limit: nil, match_type: nil, result: nil, skip: nil, team_id: nil, request_options: {})
      #
      # @param limit [Integer] Maximum number of items to return (max: 100)
      #
      # @param match_type [Symbol, Believe::Models::MatchType, nil] Filter by match type
      #
      # @param result [Symbol, Believe::Models::MatchResult, nil] Filter by result
      #
      # @param skip [Integer] Number of items to skip (offset)
      #
      # @param team_id [String, nil] Filter by team (home or away)
      #
      # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Believe::Internal::SkipLimitPage<Believe::Models::Match>]
      #
      # @see Believe::Models::MatchListParams
      def list(params = {})
        parsed, options = Believe::MatchListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "matches",
          query: parsed,
          page: Believe::Internal::SkipLimitPage,
          model: Believe::Match,
          options: options
        )
      end

      # Remove a match from the database.
      #
      # @overload delete(match_id, request_options: {})
      #
      # @param match_id [String]
      # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Believe::Models::MatchDeleteParams
      def delete(match_id, params = {})
        @client.request(
          method: :delete,
          path: ["matches/%1$s", match_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Get the life lesson learned from a specific match.
      #
      # @overload get_lesson(match_id, request_options: {})
      #
      # @param match_id [String]
      # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Hash{Symbol=>Object}]
      #
      # @see Believe::Models::MatchGetLessonParams
      def get_lesson(match_id, params = {})
        @client.request(
          method: :get,
          path: ["matches/%1$s/lesson", match_id],
          model: Believe::Internal::Type::HashOf[Believe::Internal::Type::Unknown],
          options: params[:request_options]
        )
      end

      # Get all turning points from a specific match.
      #
      # @overload get_turning_points(match_id, request_options: {})
      #
      # @param match_id [String]
      # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Hash{Symbol=>Object}>]
      #
      # @see Believe::Models::MatchGetTurningPointsParams
      def get_turning_points(match_id, params = {})
        @client.request(
          method: :get,
          path: ["matches/%1$s/turning-points", match_id],
          model: Believe::Internal::Type::ArrayOf[Believe::Internal::Type::HashOf[Believe::Internal::Type::Unknown]],
          options: params[:request_options]
        )
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
      #
      # @overload stream_live(away_team: nil, excitement_level: nil, home_team: nil, speed: nil, request_options: {})
      #
      # @param away_team [String] Away team name
      #
      # @param excitement_level [Integer] How eventful the match should be (1=boring, 10=chaos)
      #
      # @param home_team [String] Home team name
      #
      # @param speed [Float] Simulation speed multiplier (1.0 = real-time)
      #
      # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Believe::Models::MatchStreamLiveParams
      def stream_live(params = {})
        parsed, options = Believe::MatchStreamLiveParams.dump_request(params)
        @client.request(method: :get, path: "matches/live", query: parsed, model: NilClass, options: options)
      end

      # @api private
      #
      # @param client [Believe::Client]
      def initialize(client:)
        @client = client
        @commentary = Believe::Resources::Matches::Commentary.new(client: client)
      end
    end
  end
end
