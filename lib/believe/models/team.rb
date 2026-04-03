# frozen_string_literal: true

module Believe
  module Models
    # @see ::Believe::Resources::Teams#create
    class Team < ::Believe::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier
      #
      #   @return [String]
      required :id, String

      # @!attribute culture_score
      #   Team culture/morale score (0-100)
      #
      #   @return [Integer]
      required :culture_score, Integer

      # @!attribute founded_year
      #   Year the club was founded
      #
      #   @return [Integer]
      required :founded_year, Integer

      # @!attribute league
      #   Current league
      #
      #   @return [Symbol, ::Believe::Models::League]
      required :league, enum: -> { ::Believe::League }

      # @!attribute name
      #   Team name
      #
      #   @return [String]
      required :name, String

      # @!attribute stadium
      #   Home stadium name
      #
      #   @return [String]
      required :stadium, String

      # @!attribute values
      #   Team's core values
      #
      #   @return [::Believe::Models::TeamValues]
      required :values, -> { ::Believe::TeamValues }

      # @!attribute annual_budget_gbp
      #   Annual budget in GBP
      #
      #   @return [String, nil]
      optional :annual_budget_gbp, String, nil?: true

      # @!attribute average_attendance
      #   Average match attendance
      #
      #   @return [Float, nil]
      optional :average_attendance, Float, nil?: true

      # @!attribute contact_email
      #   Team contact email
      #
      #   @return [String, nil]
      optional :contact_email, String, nil?: true

      # @!attribute is_active
      #   Whether the team is currently active
      #
      #   @return [Boolean, nil]
      optional :is_active, ::Believe::Internal::Type::Boolean

      # @!attribute nickname
      #   Team nickname
      #
      #   @return [String, nil]
      optional :nickname, String, nil?: true

      # @!attribute primary_color
      #   Primary team color (hex)
      #
      #   @return [String, nil]
      optional :primary_color, String, nil?: true

      # @!attribute rival_teams
      #   List of rival team IDs
      #
      #   @return [Array<String>, nil]
      optional :rival_teams, ::Believe::Internal::Type::ArrayOf[String]

      # @!attribute secondary_color
      #   Secondary team color (hex)
      #
      #   @return [String, nil]
      optional :secondary_color, String, nil?: true

      # @!attribute stadium_location
      #   Geographic coordinates for a location.
      #
      #   @return [::Believe::Models::GeoLocation, nil]
      optional :stadium_location, -> { ::Believe::GeoLocation }, nil?: true

      # @!attribute website
      #   Official team website
      #
      #   @return [String, nil]
      optional :website, String, nil?: true

      # @!attribute win_percentage
      #   Season win percentage
      #
      #   @return [Float, nil]
      optional :win_percentage, Float, nil?: true

      # @!method initialize(id:, culture_score:, founded_year:, league:, name:, stadium:, values:, annual_budget_gbp: nil, average_attendance: nil, contact_email: nil, is_active: nil, nickname: nil, primary_color: nil, rival_teams: nil, secondary_color: nil, stadium_location: nil, website: nil, win_percentage: nil)
      #   Full team model with ID.
      #
      #   @param id [String] Unique identifier
      #
      #   @param culture_score [Integer] Team culture/morale score (0-100)
      #
      #   @param founded_year [Integer] Year the club was founded
      #
      #   @param league [Symbol, ::Believe::Models::League] Current league
      #
      #   @param name [String] Team name
      #
      #   @param stadium [String] Home stadium name
      #
      #   @param values [::Believe::Models::TeamValues] Team's core values
      #
      #   @param annual_budget_gbp [String, nil] Annual budget in GBP
      #
      #   @param average_attendance [Float, nil] Average match attendance
      #
      #   @param contact_email [String, nil] Team contact email
      #
      #   @param is_active [Boolean] Whether the team is currently active
      #
      #   @param nickname [String, nil] Team nickname
      #
      #   @param primary_color [String, nil] Primary team color (hex)
      #
      #   @param rival_teams [Array<String>] List of rival team IDs
      #
      #   @param secondary_color [String, nil] Secondary team color (hex)
      #
      #   @param stadium_location [::Believe::Models::GeoLocation, nil] Geographic coordinates for a location.
      #
      #   @param website [String, nil] Official team website
      #
      #   @param win_percentage [Float, nil] Season win percentage
    end
  end
end
