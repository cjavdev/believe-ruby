# typed: strong

module Believe
  module Resources
    # Operations related to TV episodes
    class Episodes
      # Add a new episode to the series.
      sig do
        params(
          air_date: Date,
          character_focus: T::Array[String],
          director: String,
          episode_number: Integer,
          main_theme: String,
          runtime_minutes: Integer,
          season: Integer,
          synopsis: String,
          ted_wisdom: String,
          title: String,
          writer: String,
          biscuits_with_boss_moment: T.nilable(String),
          memorable_moments: T::Array[String],
          us_viewers_millions: T.nilable(Float),
          viewer_rating: T.nilable(Float),
          request_options: ::Believe::RequestOptions::OrHash
        ).returns(::Believe::Episode)
      end
      def create(
        # Original air date
        air_date:,
        # Characters with significant development
        character_focus:,
        # Episode director
        director:,
        # Episode number within season
        episode_number:,
        # Central theme of the episode
        main_theme:,
        # Episode runtime in minutes
        runtime_minutes:,
        # Season number
        season:,
        # Brief plot synopsis
        synopsis:,
        # Key piece of Ted wisdom from the episode
        ted_wisdom:,
        # Episode title
        title:,
        # Episode writer(s)
        writer:,
        # Notable biscuits with the boss scene
        biscuits_with_boss_moment: nil,
        # Standout moments from the episode
        memorable_moments: nil,
        # US viewership in millions
        us_viewers_millions: nil,
        # Viewer rating out of 10
        viewer_rating: nil,
        request_options: {}
      )
      end

      # Retrieve detailed information about a specific episode.
      sig do
        params(
          episode_id: String,
          request_options: ::Believe::RequestOptions::OrHash
        ).returns(::Believe::Episode)
      end
      def retrieve(episode_id, request_options: {})
      end

      # Update specific fields of an existing episode.
      sig do
        params(
          episode_id: String,
          air_date: T.nilable(Date),
          biscuits_with_boss_moment: T.nilable(String),
          character_focus: T.nilable(T::Array[String]),
          director: T.nilable(String),
          episode_number: T.nilable(Integer),
          main_theme: T.nilable(String),
          memorable_moments: T.nilable(T::Array[String]),
          runtime_minutes: T.nilable(Integer),
          season: T.nilable(Integer),
          synopsis: T.nilable(String),
          ted_wisdom: T.nilable(String),
          title: T.nilable(String),
          us_viewers_millions: T.nilable(Float),
          viewer_rating: T.nilable(Float),
          writer: T.nilable(String),
          request_options: ::Believe::RequestOptions::OrHash
        ).returns(::Believe::Episode)
      end
      def update(
        episode_id,
        air_date: nil,
        biscuits_with_boss_moment: nil,
        character_focus: nil,
        director: nil,
        episode_number: nil,
        main_theme: nil,
        memorable_moments: nil,
        runtime_minutes: nil,
        season: nil,
        synopsis: nil,
        ted_wisdom: nil,
        title: nil,
        us_viewers_millions: nil,
        viewer_rating: nil,
        writer: nil,
        request_options: {}
      )
      end

      # Get a paginated list of all Ted Lasso episodes with optional filtering by
      # season.
      sig do
        params(
          character_focus: T.nilable(String),
          limit: Integer,
          season: T.nilable(Integer),
          skip: Integer,
          request_options: ::Believe::RequestOptions::OrHash
        ).returns(::Believe::Internal::SkipLimitPage[::Believe::Episode])
      end
      def list(
        # Filter by character focus (character ID)
        character_focus: nil,
        # Maximum number of items to return (max: 100)
        limit: nil,
        # Filter by season
        season: nil,
        # Number of items to skip (offset)
        skip: nil,
        request_options: {}
      )
      end

      # Remove an episode from the database.
      sig do
        params(
          episode_id: String,
          request_options: ::Believe::RequestOptions::OrHash
        ).void
      end
      def delete(episode_id, request_options: {})
      end

      # Get Ted's wisdom and memorable moments from a specific episode.
      sig do
        params(
          episode_id: String,
          request_options: ::Believe::RequestOptions::OrHash
        ).returns(T::Hash[Symbol, T.anything])
      end
      def get_wisdom(episode_id, request_options: {})
      end

      # @api private
      sig { params(client: ::Believe::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
