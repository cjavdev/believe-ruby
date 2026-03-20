# frozen_string_literal: true

module Believe
  module Models
    # @see ::Believe::Resources::Characters#update
    class CharacterUpdateParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

      # @!attribute character_id
      #
      #   @return [String]
      required :character_id, String

      # @!attribute background
      #
      #   @return [String, nil]
      optional :background, String, nil?: true

      # @!attribute date_of_birth
      #
      #   @return [Date, nil]
      optional :date_of_birth, Date, nil?: true

      # @!attribute email
      #
      #   @return [String, nil]
      optional :email, String, nil?: true

      # @!attribute emotional_stats
      #   Emotional intelligence statistics for a character.
      #
      #   @return [::Believe::Models::EmotionalStats, nil]
      optional :emotional_stats, -> { ::Believe::EmotionalStats }, nil?: true

      # @!attribute growth_arcs
      #
      #   @return [Array<::Believe::Models::GrowthArc>, nil]
      optional :growth_arcs, -> { ::Believe::Internal::Type::ArrayOf[::Believe::GrowthArc] }, nil?: true

      # @!attribute height_meters
      #
      #   @return [Float, nil]
      optional :height_meters, Float, nil?: true

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute personality_traits
      #
      #   @return [Array<String>, nil]
      optional :personality_traits, ::Believe::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute profile_image_url
      #
      #   @return [String, nil]
      optional :profile_image_url, String, nil?: true

      # @!attribute role
      #   Roles characters can have.
      #
      #   @return [Symbol, ::Believe::Models::CharacterRole, nil]
      optional :role, enum: -> { ::Believe::CharacterRole }, nil?: true

      # @!attribute salary_gbp
      #
      #   @return [Float, String, nil]
      optional :salary_gbp, union: -> { ::Believe::CharacterUpdateParams::SalaryGbp }, nil?: true

      # @!attribute signature_quotes
      #
      #   @return [Array<String>, nil]
      optional :signature_quotes, ::Believe::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute team_id
      #
      #   @return [String, nil]
      optional :team_id, String, nil?: true

      # @!method initialize(character_id:, background: nil, date_of_birth: nil, email: nil, emotional_stats: nil, growth_arcs: nil, height_meters: nil, name: nil, personality_traits: nil, profile_image_url: nil, role: nil, salary_gbp: nil, signature_quotes: nil, team_id: nil, request_options: {})
      #   @param character_id [String]
      #
      #   @param background [String, nil]
      #
      #   @param date_of_birth [Date, nil]
      #
      #   @param email [String, nil]
      #
      #   @param emotional_stats [::Believe::Models::EmotionalStats, nil] Emotional intelligence statistics for a character.
      #
      #   @param growth_arcs [Array<::Believe::Models::GrowthArc>, nil]
      #
      #   @param height_meters [Float, nil]
      #
      #   @param name [String, nil]
      #
      #   @param personality_traits [Array<String>, nil]
      #
      #   @param profile_image_url [String, nil]
      #
      #   @param role [Symbol, ::Believe::Models::CharacterRole, nil] Roles characters can have.
      #
      #   @param salary_gbp [Float, String, nil]
      #
      #   @param signature_quotes [Array<String>, nil]
      #
      #   @param team_id [String, nil]
      #
      #   @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}]

      module SalaryGbp
        extend ::Believe::Internal::Type::Union

        variant Float

        variant String

        # @!method self.variants
        #   @return [Array(Float, String)]
      end
    end
  end
end
