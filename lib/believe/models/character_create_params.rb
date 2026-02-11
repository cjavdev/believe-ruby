# frozen_string_literal: true

module Believe
  module Models
    # @see Believe::Resources::Characters#create
    class CharacterCreateParams < Believe::Internal::Type::BaseModel
      extend Believe::Internal::Type::RequestParameters::Converter
      include Believe::Internal::Type::RequestParameters

      # @!attribute background
      #   Character background and history
      #
      #   @return [String]
      required :background, String

      # @!attribute emotional_stats
      #   Emotional intelligence stats
      #
      #   @return [Believe::Models::EmotionalStats]
      required :emotional_stats, -> { Believe::EmotionalStats }

      # @!attribute name
      #   Character's full name
      #
      #   @return [String]
      required :name, String

      # @!attribute personality_traits
      #   Key personality traits
      #
      #   @return [Array<String>]
      required :personality_traits, Believe::Internal::Type::ArrayOf[String]

      # @!attribute role
      #   Character's role
      #
      #   @return [Symbol, Believe::Models::CharacterRole]
      required :role, enum: -> { Believe::CharacterRole }

      # @!attribute date_of_birth
      #   Character's date of birth
      #
      #   @return [Date, nil]
      optional :date_of_birth, Date, nil?: true

      # @!attribute email
      #   Character's email address
      #
      #   @return [String, nil]
      optional :email, String, nil?: true

      # @!attribute growth_arcs
      #   Character development across seasons
      #
      #   @return [Array<Believe::Models::GrowthArc>, nil]
      optional :growth_arcs, -> { Believe::Internal::Type::ArrayOf[Believe::GrowthArc] }

      # @!attribute height_meters
      #   Height in meters
      #
      #   @return [Float, nil]
      optional :height_meters, Float, nil?: true

      # @!attribute profile_image_url
      #   URL to character's profile image
      #
      #   @return [String, nil]
      optional :profile_image_url, String, nil?: true

      # @!attribute salary_gbp
      #   Annual salary in GBP
      #
      #   @return [Float, String, nil]
      optional :salary_gbp, union: -> { Believe::CharacterCreateParams::SalaryGbp }, nil?: true

      # @!attribute signature_quotes
      #   Memorable quotes from this character
      #
      #   @return [Array<String>, nil]
      optional :signature_quotes, Believe::Internal::Type::ArrayOf[String]

      # @!attribute team_id
      #   ID of the team they belong to
      #
      #   @return [String, nil]
      optional :team_id, String, nil?: true

      # @!method initialize(background:, emotional_stats:, name:, personality_traits:, role:, date_of_birth: nil, email: nil, growth_arcs: nil, height_meters: nil, profile_image_url: nil, salary_gbp: nil, signature_quotes: nil, team_id: nil, request_options: {})
      #   @param background [String] Character background and history
      #
      #   @param emotional_stats [Believe::Models::EmotionalStats] Emotional intelligence stats
      #
      #   @param name [String] Character's full name
      #
      #   @param personality_traits [Array<String>] Key personality traits
      #
      #   @param role [Symbol, Believe::Models::CharacterRole] Character's role
      #
      #   @param date_of_birth [Date, nil] Character's date of birth
      #
      #   @param email [String, nil] Character's email address
      #
      #   @param growth_arcs [Array<Believe::Models::GrowthArc>] Character development across seasons
      #
      #   @param height_meters [Float, nil] Height in meters
      #
      #   @param profile_image_url [String, nil] URL to character's profile image
      #
      #   @param salary_gbp [Float, String, nil] Annual salary in GBP
      #
      #   @param signature_quotes [Array<String>] Memorable quotes from this character
      #
      #   @param team_id [String, nil] ID of the team they belong to
      #
      #   @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}]

      # Annual salary in GBP
      module SalaryGbp
        extend Believe::Internal::Type::Union

        variant Float

        variant String

        # @!method self.variants
        #   @return [Array(Float, String)]
      end
    end
  end
end
