# frozen_string_literal: true

module Believe
  module Resources
    class Episodes
      # Add a new episode to the series.
      #
      # @overload create(air_date:, character_focus:, director:, episode_number:, main_theme:, runtime_minutes:, season:, synopsis:, ted_wisdom:, title:, writer:, biscuits_with_boss_moment: nil, memorable_moments: nil, us_viewers_millions: nil, viewer_rating: nil, request_options: {})
      #
      # @param air_date [Date] Original air date
      #
      # @param character_focus [Array<String>] Characters with significant development
      #
      # @param director [String] Episode director
      #
      # @param episode_number [Integer] Episode number within season
      #
      # @param main_theme [String] Central theme of the episode
      #
      # @param runtime_minutes [Integer] Episode runtime in minutes
      #
      # @param season [Integer] Season number
      #
      # @param synopsis [String] Brief plot synopsis
      #
      # @param ted_wisdom [String] Key piece of Ted wisdom from the episode
      #
      # @param title [String] Episode title
      #
      # @param writer [String] Episode writer(s)
      #
      # @param biscuits_with_boss_moment [String, nil] Notable biscuits with the boss scene
      #
      # @param memorable_moments [Array<String>] Standout moments from the episode
      #
      # @param us_viewers_millions [Float, nil] US viewership in millions
      #
      # @param viewer_rating [Float, nil] Viewer rating out of 10
      #
      # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Believe::Models::Episode]
      #
      # @see Believe::Models::EpisodeCreateParams
      def create(params)
        parsed, options = Believe::EpisodeCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "episodes",
          body: parsed,
          model: Believe::Episode,
          options: options
        )
      end

      # Retrieve detailed information about a specific episode.
      #
      # @overload retrieve(episode_id, request_options: {})
      #
      # @param episode_id [String]
      # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Believe::Models::Episode]
      #
      # @see Believe::Models::EpisodeRetrieveParams
      def retrieve(episode_id, params = {})
        @client.request(
          method: :get,
          path: ["episodes/%1$s", episode_id],
          model: Believe::Episode,
          options: params[:request_options]
        )
      end

      # Update specific fields of an existing episode.
      #
      # @overload update(episode_id, air_date: nil, biscuits_with_boss_moment: nil, character_focus: nil, director: nil, episode_number: nil, main_theme: nil, memorable_moments: nil, runtime_minutes: nil, season: nil, synopsis: nil, ted_wisdom: nil, title: nil, us_viewers_millions: nil, viewer_rating: nil, writer: nil, request_options: {})
      #
      # @param episode_id [String]
      # @param air_date [Date, nil]
      # @param biscuits_with_boss_moment [String, nil]
      # @param character_focus [Array<String>, nil]
      # @param director [String, nil]
      # @param episode_number [Integer, nil]
      # @param main_theme [String, nil]
      # @param memorable_moments [Array<String>, nil]
      # @param runtime_minutes [Integer, nil]
      # @param season [Integer, nil]
      # @param synopsis [String, nil]
      # @param ted_wisdom [String, nil]
      # @param title [String, nil]
      # @param us_viewers_millions [Float, nil]
      # @param viewer_rating [Float, nil]
      # @param writer [String, nil]
      # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Believe::Models::Episode]
      #
      # @see Believe::Models::EpisodeUpdateParams
      def update(episode_id, params = {})
        parsed, options = Believe::EpisodeUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["episodes/%1$s", episode_id],
          body: parsed,
          model: Believe::Episode,
          options: options
        )
      end

      # Get a paginated list of all Ted Lasso episodes with optional filtering by
      # season.
      #
      # @overload list(character_focus: nil, limit: nil, season: nil, skip: nil, request_options: {})
      #
      # @param character_focus [String, nil] Filter by character focus (character ID)
      #
      # @param limit [Integer] Maximum number of items to return (max: 100)
      #
      # @param season [Integer, nil] Filter by season
      #
      # @param skip [Integer] Number of items to skip (offset)
      #
      # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Believe::Internal::SkipLimitPage<Believe::Models::Episode>]
      #
      # @see Believe::Models::EpisodeListParams
      def list(params = {})
        parsed, options = Believe::EpisodeListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "episodes",
          query: parsed,
          page: Believe::Internal::SkipLimitPage,
          model: Believe::Episode,
          options: options
        )
      end

      # Remove an episode from the database.
      #
      # @overload delete(episode_id, request_options: {})
      #
      # @param episode_id [String]
      # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Believe::Models::EpisodeDeleteParams
      def delete(episode_id, params = {})
        @client.request(
          method: :delete,
          path: ["episodes/%1$s", episode_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Get Ted's wisdom and memorable moments from a specific episode.
      #
      # @overload get_wisdom(episode_id, request_options: {})
      #
      # @param episode_id [String]
      # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Hash{Symbol=>Object}]
      #
      # @see Believe::Models::EpisodeGetWisdomParams
      def get_wisdom(episode_id, params = {})
        @client.request(
          method: :get,
          path: ["episodes/%1$s/wisdom", episode_id],
          model: Believe::Internal::Type::HashOf[Believe::Internal::Type::Unknown],
          options: params[:request_options]
        )
      end

      # Get a paginated list of episodes from a specific season.
      #
      # @overload list_by_season(season_number, limit: nil, skip: nil, request_options: {})
      #
      # @param season_number [Integer]
      #
      # @param limit [Integer] Maximum number of items to return (max: 100)
      #
      # @param skip [Integer] Number of items to skip (offset)
      #
      # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Believe::Internal::SkipLimitPage<Believe::Models::Episode>]
      #
      # @see Believe::Models::EpisodeListBySeasonParams
      def list_by_season(season_number, params = {})
        parsed, options = Believe::EpisodeListBySeasonParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["episodes/seasons/%1$s", season_number],
          query: parsed,
          page: Believe::Internal::SkipLimitPage,
          model: Believe::Episode,
          options: options
        )
      end

      # @api private
      #
      # @param client [Believe::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
