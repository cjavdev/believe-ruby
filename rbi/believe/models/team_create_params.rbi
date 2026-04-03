# typed: strong

module Believe
  module Models
    class TeamCreateParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(::Believe::TeamCreateParams, ::Believe::Internal::AnyHash) }

      # Team culture/morale score (0-100)
      sig { returns(Integer) }
      attr_accessor :culture_score

      # Year the club was founded
      sig { returns(Integer) }
      attr_accessor :founded_year

      # Current league
      sig { returns(::Believe::League::OrSymbol) }
      attr_accessor :league

      # Team name
      sig { returns(String) }
      attr_accessor :name

      # Home stadium name
      sig { returns(String) }
      attr_accessor :stadium

      # Team's core values
      sig { returns(::Believe::TeamValues) }
      attr_reader :values

      sig { params(values: ::Believe::TeamValues::OrHash).void }
      attr_writer :values

      # Annual budget in GBP
      sig { returns(T.nilable(::Believe::TeamCreateParams::AnnualBudgetGbp::Variants)) }
      attr_accessor :annual_budget_gbp

      # Average match attendance
      sig { returns(T.nilable(Float)) }
      attr_accessor :average_attendance

      # Team contact email
      sig { returns(T.nilable(String)) }
      attr_accessor :contact_email

      # Whether the team is currently active
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_active

      sig { params(is_active: T::Boolean).void }
      attr_writer :is_active

      # Team nickname
      sig { returns(T.nilable(String)) }
      attr_accessor :nickname

      # Primary team color (hex)
      sig { returns(T.nilable(String)) }
      attr_accessor :primary_color

      # List of rival team IDs
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :rival_teams

      sig { params(rival_teams: T::Array[String]).void }
      attr_writer :rival_teams

      # Secondary team color (hex)
      sig { returns(T.nilable(String)) }
      attr_accessor :secondary_color

      # Geographic coordinates for a location.
      sig { returns(T.nilable(::Believe::GeoLocation)) }
      attr_reader :stadium_location

      sig { params(stadium_location: T.nilable(::Believe::GeoLocation::OrHash)).void }
      attr_writer :stadium_location

      # Official team website
      sig { returns(T.nilable(String)) }
      attr_accessor :website

      # Season win percentage
      sig { returns(T.nilable(Float)) }
      attr_accessor :win_percentage

      sig do
        params(
          culture_score: Integer,
          founded_year: Integer,
          league: ::Believe::League::OrSymbol,
          name: String,
          stadium: String,
          values: ::Believe::TeamValues::OrHash,
          annual_budget_gbp: T.nilable(::Believe::TeamCreateParams::AnnualBudgetGbp::Variants),
          average_attendance: T.nilable(Float),
          contact_email: T.nilable(String),
          is_active: T::Boolean,
          nickname: T.nilable(String),
          primary_color: T.nilable(String),
          rival_teams: T::Array[String],
          secondary_color: T.nilable(String),
          stadium_location: T.nilable(::Believe::GeoLocation::OrHash),
          website: T.nilable(String),
          win_percentage: T.nilable(Float),
          request_options: ::Believe::RequestOptions::OrHash
        )
          .returns(T.attached_class)
      end
      def self.new(
        # Team culture/morale score (0-100)
      culture_score:,
        # Year the club was founded
      founded_year:,
        # Current league
      league:,
        # Team name
      name:,
        # Home stadium name
      stadium:,
        # Team's core values
      values:,
        # Annual budget in GBP
      annual_budget_gbp: nil,
        # Average match attendance
      average_attendance: nil,
        # Team contact email
      contact_email: nil,
        # Whether the team is currently active
      is_active: nil,
        # Team nickname
      nickname: nil,
        # Primary team color (hex)
      primary_color: nil,
        # List of rival team IDs
      rival_teams: nil,
        # Secondary team color (hex)
      secondary_color: nil,
        # Geographic coordinates for a location.
      stadium_location: nil,
        # Official team website
      website: nil,
        # Season win percentage
      win_percentage: nil,
        request_options: {}
      ); end

      sig do
        override
          .returns(
            {
              culture_score: Integer,
              founded_year: Integer,
              league: ::Believe::League::OrSymbol,
              name: String,
              stadium: String,
              values: ::Believe::TeamValues,
              annual_budget_gbp: T.nilable(::Believe::TeamCreateParams::AnnualBudgetGbp::Variants),
              average_attendance: T.nilable(Float),
              contact_email: T.nilable(String),
              is_active: T::Boolean,
              nickname: T.nilable(String),
              primary_color: T.nilable(String),
              rival_teams: T::Array[String],
              secondary_color: T.nilable(String),
              stadium_location: T.nilable(::Believe::GeoLocation),
              website: T.nilable(String),
              win_percentage: T.nilable(Float),
              request_options: ::Believe::RequestOptions
            }
          )
      end
      def to_hash; end

      # Annual budget in GBP
      module AnnualBudgetGbp
        extend ::Believe::Internal::Type::Union

        Variants = T.type_alias { T.any(Float, String) }

        sig { override.returns(T::Array[::Believe::TeamCreateParams::AnnualBudgetGbp::Variants]) }
        def self.variants; end
      end
    end
  end
end
