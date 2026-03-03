# frozen_string_literal: true

module Believe
  module Resources
    # Operations related to football teams
    class Teams
      # Operations related to football teams
      # @return [Believe::Resources::Teams::Logo]
      attr_reader :logo

      # Add a new team to the league.
      #
      # @overload create(culture_score:, founded_year:, league:, name:, stadium:, values:, annual_budget_gbp: nil, average_attendance: nil, contact_email: nil, is_active: nil, nickname: nil, primary_color: nil, rival_teams: nil, secondary_color: nil, stadium_location: nil, website: nil, win_percentage: nil, request_options: {})
      #
      # @param culture_score [Integer] Team culture/morale score (0-100)
      #
      # @param founded_year [Integer] Year the club was founded
      #
      # @param league [Symbol, Believe::Models::League] Current league
      #
      # @param name [String] Team name
      #
      # @param stadium [String] Home stadium name
      #
      # @param values [Believe::Models::TeamValues] Team's core values
      #
      # @param annual_budget_gbp [Float, String, nil] Annual budget in GBP
      #
      # @param average_attendance [Float, nil] Average match attendance
      #
      # @param contact_email [String, nil] Team contact email
      #
      # @param is_active [Boolean] Whether the team is currently active
      #
      # @param nickname [String, nil] Team nickname
      #
      # @param primary_color [String, nil] Primary team color (hex)
      #
      # @param rival_teams [Array<String>] List of rival team IDs
      #
      # @param secondary_color [String, nil] Secondary team color (hex)
      #
      # @param stadium_location [Believe::Models::GeoLocation, nil] Geographic coordinates for a location.
      #
      # @param website [String, nil] Official team website
      #
      # @param win_percentage [Float, nil] Season win percentage
      #
      # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Believe::Models::Team]
      #
      # @see Believe::Models::TeamCreateParams
      def create(params)
        parsed, options = Believe::TeamCreateParams.dump_request(params)
        @client.request(method: :post, path: "teams", body: parsed, model: Believe::Team, options: options)
      end

      # Retrieve detailed information about a specific team.
      #
      # @overload retrieve(team_id, request_options: {})
      #
      # @param team_id [String]
      # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Believe::Models::Team]
      #
      # @see Believe::Models::TeamRetrieveParams
      def retrieve(team_id, params = {})
        @client.request(
          method: :get,
          path: ["teams/%1$s", team_id],
          model: Believe::Team,
          options: params[:request_options]
        )
      end

      # Update specific fields of an existing team.
      #
      # @overload update(team_id, annual_budget_gbp: nil, average_attendance: nil, contact_email: nil, culture_score: nil, founded_year: nil, is_active: nil, league: nil, name: nil, nickname: nil, primary_color: nil, rival_teams: nil, secondary_color: nil, stadium: nil, stadium_location: nil, values: nil, website: nil, win_percentage: nil, request_options: {})
      #
      # @param team_id [String]
      #
      # @param annual_budget_gbp [Float, String, nil]
      #
      # @param average_attendance [Float, nil]
      #
      # @param contact_email [String, nil]
      #
      # @param culture_score [Integer, nil]
      #
      # @param founded_year [Integer, nil]
      #
      # @param is_active [Boolean, nil]
      #
      # @param league [Symbol, Believe::Models::League, nil] Football leagues.
      #
      # @param name [String, nil]
      #
      # @param nickname [String, nil]
      #
      # @param primary_color [String, nil]
      #
      # @param rival_teams [Array<String>, nil]
      #
      # @param secondary_color [String, nil]
      #
      # @param stadium [String, nil]
      #
      # @param stadium_location [Believe::Models::GeoLocation, nil] Geographic coordinates for a location.
      #
      # @param values [Believe::Models::TeamValues, nil] Core values that define a team's culture.
      #
      # @param website [String, nil]
      #
      # @param win_percentage [Float, nil]
      #
      # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Believe::Models::Team]
      #
      # @see Believe::Models::TeamUpdateParams
      def update(team_id, params = {})
        parsed, options = Believe::TeamUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["teams/%1$s", team_id],
          body: parsed,
          model: Believe::Team,
          options: options
        )
      end

      # Get a paginated list of all teams with optional filtering by league or culture
      # score.
      #
      # @overload list(league: nil, limit: nil, min_culture_score: nil, skip: nil, request_options: {})
      #
      # @param league [Symbol, Believe::Models::League, nil] Filter by league
      #
      # @param limit [Integer] Maximum number of items to return (max: 100)
      #
      # @param min_culture_score [Integer, nil] Minimum culture score
      #
      # @param skip [Integer] Number of items to skip (offset)
      #
      # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Believe::Internal::SkipLimitPage<Believe::Models::Team>]
      #
      # @see Believe::Models::TeamListParams
      def list(params = {})
        parsed, options = Believe::TeamListParams.dump_request(params)
        query = Believe::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "teams",
          query: query,
          page: Believe::Internal::SkipLimitPage,
          model: Believe::Team,
          options: options
        )
      end

      # Remove a team from the database (relegation to oblivion).
      #
      # @overload delete(team_id, request_options: {})
      #
      # @param team_id [String]
      # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Believe::Models::TeamDeleteParams
      def delete(team_id, params = {})
        @client.request(
          method: :delete,
          path: ["teams/%1$s", team_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Get detailed culture and values information for a team.
      #
      # @overload get_culture(team_id, request_options: {})
      #
      # @param team_id [String]
      # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Hash{Symbol=>Object}]
      #
      # @see Believe::Models::TeamGetCultureParams
      def get_culture(team_id, params = {})
        @client.request(
          method: :get,
          path: ["teams/%1$s/culture", team_id],
          model: Believe::Internal::Type::HashOf[Believe::Internal::Type::Unknown],
          options: params[:request_options]
        )
      end

      # Get all rival teams for a specific team.
      #
      # @overload get_rivals(team_id, request_options: {})
      #
      # @param team_id [String]
      # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Believe::Models::Team>]
      #
      # @see Believe::Models::TeamGetRivalsParams
      def get_rivals(team_id, params = {})
        @client.request(
          method: :get,
          path: ["teams/%1$s/rivals", team_id],
          model: Believe::Internal::Type::ArrayOf[Believe::Team],
          options: params[:request_options]
        )
      end

      # List all uploaded logos for a team.
      #
      # @overload list_logos(team_id, request_options: {})
      #
      # @param team_id [String]
      # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Believe::Models::Teams::FileUpload>]
      #
      # @see Believe::Models::TeamListLogosParams
      def list_logos(team_id, params = {})
        @client.request(
          method: :get,
          path: ["teams/%1$s/logos", team_id],
          model: Believe::Internal::Type::ArrayOf[Believe::Teams::FileUpload],
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Believe::Client]
      def initialize(client:)
        @client = client
        @logo = Believe::Resources::Teams::Logo.new(client: client)
      end
    end
  end
end
