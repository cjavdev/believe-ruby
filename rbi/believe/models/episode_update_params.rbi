# typed: strong

module Believe
  module Models
    class EpisodeUpdateParams < Believe::Internal::Type::BaseModel
      extend Believe::Internal::Type::RequestParameters::Converter
      include Believe::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Believe::EpisodeUpdateParams, Believe::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :episode_id

      sig { returns(T.nilable(Date)) }
      attr_accessor :air_date

      sig { returns(T.nilable(String)) }
      attr_accessor :biscuits_with_boss_moment

      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :character_focus

      sig { returns(T.nilable(String)) }
      attr_accessor :director

      sig { returns(T.nilable(Integer)) }
      attr_accessor :episode_number

      sig { returns(T.nilable(String)) }
      attr_accessor :main_theme

      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :memorable_moments

      sig { returns(T.nilable(Integer)) }
      attr_accessor :runtime_minutes

      sig { returns(T.nilable(Integer)) }
      attr_accessor :season

      sig { returns(T.nilable(String)) }
      attr_accessor :synopsis

      sig { returns(T.nilable(String)) }
      attr_accessor :ted_wisdom

      sig { returns(T.nilable(String)) }
      attr_accessor :title

      sig { returns(T.nilable(Float)) }
      attr_accessor :us_viewers_millions

      sig { returns(T.nilable(Float)) }
      attr_accessor :viewer_rating

      sig { returns(T.nilable(String)) }
      attr_accessor :writer

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
          request_options: Believe::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        episode_id:,
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

      sig do
        override.returns(
          {
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
            request_options: Believe::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
