# typed: strong

module Believe
  module Models
    class CharacterUpdateParams < Believe::Internal::Type::BaseModel
      extend Believe::Internal::Type::RequestParameters::Converter
      include Believe::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Believe::CharacterUpdateParams, Believe::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_accessor :background

      sig { returns(T.nilable(Date)) }
      attr_accessor :date_of_birth

      sig { returns(T.nilable(String)) }
      attr_accessor :email

      # Emotional intelligence statistics for a character.
      sig { returns(T.nilable(Believe::EmotionalStats)) }
      attr_reader :emotional_stats

      sig do
        params(emotional_stats: T.nilable(Believe::EmotionalStats::OrHash)).void
      end
      attr_writer :emotional_stats

      sig { returns(T.nilable(T::Array[Believe::GrowthArc])) }
      attr_accessor :growth_arcs

      sig { returns(T.nilable(Float)) }
      attr_accessor :height_meters

      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :personality_traits

      sig { returns(T.nilable(String)) }
      attr_accessor :profile_image_url

      # Roles characters can have.
      sig { returns(T.nilable(Believe::CharacterRole::OrSymbol)) }
      attr_accessor :role

      sig do
        returns(T.nilable(Believe::CharacterUpdateParams::SalaryGbp::Variants))
      end
      attr_accessor :salary_gbp

      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :signature_quotes

      sig { returns(T.nilable(String)) }
      attr_accessor :team_id

      sig do
        params(
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
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            background: T.nilable(String),
            date_of_birth: T.nilable(Date),
            email: T.nilable(String),
            emotional_stats: T.nilable(Believe::EmotionalStats),
            growth_arcs: T.nilable(T::Array[Believe::GrowthArc]),
            height_meters: T.nilable(Float),
            name: T.nilable(String),
            personality_traits: T.nilable(T::Array[String]),
            profile_image_url: T.nilable(String),
            role: T.nilable(Believe::CharacterRole::OrSymbol),
            salary_gbp:
              T.nilable(Believe::CharacterUpdateParams::SalaryGbp::Variants),
            signature_quotes: T.nilable(T::Array[String]),
            team_id: T.nilable(String),
            request_options: Believe::RequestOptions
          }
        )
      end
      def to_hash
      end

      module SalaryGbp
        extend Believe::Internal::Type::Union

        Variants = T.type_alias { T.any(Float, String) }

        sig do
          override.returns(
            T::Array[Believe::CharacterUpdateParams::SalaryGbp::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
