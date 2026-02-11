# frozen_string_literal: true

module Believe
  module Models
    # @see Believe::Resources::Teams#update
    class TeamUpdateParams < Believe::Internal::Type::BaseModel
      extend Believe::Internal::Type::RequestParameters::Converter
      include Believe::Internal::Type::RequestParameters

      # @!attribute annual_budget_gbp
      #
      #   @return [Float, String, nil]
      optional :annual_budget_gbp, union: -> { Believe::TeamUpdateParams::AnnualBudgetGbp }, nil?: true

      # @!attribute average_attendance
      #
      #   @return [Float, nil]
      optional :average_attendance, Float, nil?: true

      # @!attribute contact_email
      #
      #   @return [String, nil]
      optional :contact_email, String, nil?: true

      # @!attribute culture_score
      #
      #   @return [Integer, nil]
      optional :culture_score, Integer, nil?: true

      # @!attribute founded_year
      #
      #   @return [Integer, nil]
      optional :founded_year, Integer, nil?: true

      # @!attribute is_active
      #
      #   @return [Boolean, nil]
      optional :is_active, Believe::Internal::Type::Boolean, nil?: true

      # @!attribute league
      #   Football leagues.
      #
      #   @return [Symbol, Believe::Models::League, nil]
      optional :league, enum: -> { Believe::League }, nil?: true

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute nickname
      #
      #   @return [String, nil]
      optional :nickname, String, nil?: true

      # @!attribute primary_color
      #
      #   @return [String, nil]
      optional :primary_color, String, nil?: true

      # @!attribute rival_teams
      #
      #   @return [Array<String>, nil]
      optional :rival_teams, Believe::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute secondary_color
      #
      #   @return [String, nil]
      optional :secondary_color, String, nil?: true

      # @!attribute stadium
      #
      #   @return [String, nil]
      optional :stadium, String, nil?: true

      # @!attribute stadium_location
      #   Geographic coordinates for a location.
      #
      #   @return [Believe::Models::GeoLocation, nil]
      optional :stadium_location, -> { Believe::GeoLocation }, nil?: true

      # @!attribute values
      #   Core values that define a team's culture.
      #
      #   @return [Believe::Models::TeamValues, nil]
      optional :values, -> { Believe::TeamValues }, nil?: true

      # @!attribute website
      #
      #   @return [String, nil]
      optional :website, String, nil?: true

      # @!attribute win_percentage
      #
      #   @return [Float, nil]
      optional :win_percentage, Float, nil?: true

      # @!method initialize(annual_budget_gbp: nil, average_attendance: nil, contact_email: nil, culture_score: nil, founded_year: nil, is_active: nil, league: nil, name: nil, nickname: nil, primary_color: nil, rival_teams: nil, secondary_color: nil, stadium: nil, stadium_location: nil, values: nil, website: nil, win_percentage: nil, request_options: {})
      #   @param annual_budget_gbp [Float, String, nil]
      #
      #   @param average_attendance [Float, nil]
      #
      #   @param contact_email [String, nil]
      #
      #   @param culture_score [Integer, nil]
      #
      #   @param founded_year [Integer, nil]
      #
      #   @param is_active [Boolean, nil]
      #
      #   @param league [Symbol, Believe::Models::League, nil] Football leagues.
      #
      #   @param name [String, nil]
      #
      #   @param nickname [String, nil]
      #
      #   @param primary_color [String, nil]
      #
      #   @param rival_teams [Array<String>, nil]
      #
      #   @param secondary_color [String, nil]
      #
      #   @param stadium [String, nil]
      #
      #   @param stadium_location [Believe::Models::GeoLocation, nil] Geographic coordinates for a location.
      #
      #   @param values [Believe::Models::TeamValues, nil] Core values that define a team's culture.
      #
      #   @param website [String, nil]
      #
      #   @param win_percentage [Float, nil]
      #
      #   @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}]

      module AnnualBudgetGbp
        extend Believe::Internal::Type::Union

        variant Float

        variant String

        # @!method self.variants
        #   @return [Array(Float, String)]
      end
    end
  end
end
