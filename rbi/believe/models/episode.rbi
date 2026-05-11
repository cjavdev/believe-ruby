# typed: strong

module Believe
  module Models
    class Episode < ::Believe::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(::Believe::Episode, ::Believe::Internal::AnyHash) }

      # Unique identifier (format: s##e##)
      sig { returns(String) }
      attr_accessor :id

      # Original air date
      sig { returns(Date) }
      attr_accessor :air_date

      # Characters with significant development
      sig { returns(T::Array[String]) }
      attr_accessor :character_focus

      # Episode director
      sig { returns(String) }
      attr_accessor :director

      # Episode number within season
      sig { returns(Integer) }
      attr_accessor :episode_number

      # Central theme of the episode
      sig { returns(String) }
      attr_accessor :main_theme

      # Episode runtime in minutes
      sig { returns(Integer) }
      attr_accessor :runtime_minutes

      # Season number
      sig { returns(Integer) }
      attr_accessor :season

      # Brief plot synopsis
      sig { returns(String) }
      attr_accessor :synopsis

      # Key piece of Ted wisdom from the episode
      sig { returns(String) }
      attr_accessor :ted_wisdom

      # Episode title
      sig { returns(String) }
      attr_accessor :title

      # Episode writer(s)
      sig { returns(String) }
      attr_accessor :writer

      # Notable biscuits with the boss scene
      sig { returns(T.nilable(String)) }
      attr_accessor :biscuits_with_boss_moment

      # Standout moments from the episode
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :memorable_moments

      sig { params(memorable_moments: T::Array[String]).void }
      attr_writer :memorable_moments

      # US viewership in millions
      sig { returns(T.nilable(Float)) }
      attr_accessor :us_viewers_millions

      # Viewer rating out of 10
      sig { returns(T.nilable(Float)) }
      attr_accessor :viewer_rating

      # Full episode model with ID.
      sig do
        params(
          id: String,
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
          viewer_rating: T.nilable(Float)
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier (format: s##e##)
        id:,
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
        viewer_rating: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
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
            viewer_rating: T.nilable(Float)
          }
        )
      end
      def to_hash
      end
    end
  end
end
