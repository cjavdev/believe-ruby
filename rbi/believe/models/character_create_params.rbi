# typed: strong

module Believe
  module Models
    class CharacterCreateParams < Believe::Internal::Type::BaseModel
      extend Believe::Internal::Type::RequestParameters::Converter
      include Believe::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Believe::CharacterCreateParams, Believe::Internal::AnyHash)
        end

      # Character background and history
      sig { returns(String) }
      attr_accessor :background

      # Emotional intelligence stats
      sig { returns(Believe::EmotionalStats) }
      attr_reader :emotional_stats

      sig { params(emotional_stats: Believe::EmotionalStats::OrHash).void }
      attr_writer :emotional_stats

      # Character's full name
      sig { returns(String) }
      attr_accessor :name

      # Key personality traits
      sig { returns(T::Array[String]) }
      attr_accessor :personality_traits

      # Character's role
      sig { returns(Believe::CharacterRole::OrSymbol) }
      attr_accessor :role

      # Character's date of birth
      sig { returns(T.nilable(Date)) }
      attr_accessor :date_of_birth

      # Character's email address
      sig { returns(T.nilable(String)) }
      attr_accessor :email

      # Character development across seasons
      sig { returns(T.nilable(T::Array[Believe::GrowthArc])) }
      attr_reader :growth_arcs

      sig { params(growth_arcs: T::Array[Believe::GrowthArc::OrHash]).void }
      attr_writer :growth_arcs

      # Height in meters
      sig { returns(T.nilable(Float)) }
      attr_accessor :height_meters

      # URL to character's profile image
      sig { returns(T.nilable(String)) }
      attr_accessor :profile_image_url

      # Annual salary in GBP
      sig do
        returns(T.nilable(Believe::CharacterCreateParams::SalaryGbp::Variants))
      end
      attr_accessor :salary_gbp

      # Memorable quotes from this character
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :signature_quotes

      sig { params(signature_quotes: T::Array[String]).void }
      attr_writer :signature_quotes

      # ID of the team they belong to
      sig { returns(T.nilable(String)) }
      attr_accessor :team_id

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
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            background: String,
            emotional_stats: Believe::EmotionalStats,
            name: String,
            personality_traits: T::Array[String],
            role: Believe::CharacterRole::OrSymbol,
            date_of_birth: T.nilable(Date),
            email: T.nilable(String),
            growth_arcs: T::Array[Believe::GrowthArc],
            height_meters: T.nilable(Float),
            profile_image_url: T.nilable(String),
            salary_gbp:
              T.nilable(Believe::CharacterCreateParams::SalaryGbp::Variants),
            signature_quotes: T::Array[String],
            team_id: T.nilable(String),
            request_options: Believe::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Annual salary in GBP
      module SalaryGbp
        extend Believe::Internal::Type::Union

        Variants = T.type_alias { T.any(Float, String) }

        sig do
          override.returns(
            T::Array[Believe::CharacterCreateParams::SalaryGbp::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
