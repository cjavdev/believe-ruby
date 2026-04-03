# typed: strong

module Believe
  module Models
    class TeamUpdateParams < ::Believe::Internal::Type::BaseModel
      extend ::Believe::Internal::Type::RequestParameters::Converter
      include ::Believe::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(::Believe::TeamUpdateParams, ::Believe::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :team_id

      sig { returns(T.nilable(::Believe::TeamUpdateParams::AnnualBudgetGbp::Variants)) }
      attr_accessor :annual_budget_gbp

      sig { returns(T.nilable(Float)) }
      attr_accessor :average_attendance

      sig { returns(T.nilable(String)) }
      attr_accessor :contact_email

      sig { returns(T.nilable(Integer)) }
      attr_accessor :culture_score

      sig { returns(T.nilable(Integer)) }
      attr_accessor :founded_year

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :is_active

      # Football leagues.
      sig { returns(T.nilable(::Believe::League::OrSymbol)) }
      attr_accessor :league

      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig { returns(T.nilable(String)) }
      attr_accessor :nickname

      sig { returns(T.nilable(String)) }
      attr_accessor :primary_color

      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :rival_teams

      sig { returns(T.nilable(String)) }
      attr_accessor :secondary_color

      sig { returns(T.nilable(String)) }
      attr_accessor :stadium

      # Geographic coordinates for a location.
      sig { returns(T.nilable(::Believe::GeoLocation)) }
      attr_reader :stadium_location

      sig { params(stadium_location: T.nilable(::Believe::GeoLocation::OrHash)).void }
      attr_writer :stadium_location

      # Core values that define a team's culture.
      sig { returns(T.nilable(::Believe::TeamValues)) }
      attr_reader :values

      sig { params(values: T.nilable(::Believe::TeamValues::OrHash)).void }
      attr_writer :values

      sig { returns(T.nilable(String)) }
      attr_accessor :website

      sig { returns(T.nilable(Float)) }
      attr_accessor :win_percentage

      sig do
        params(
          team_id: String,
          annual_budget_gbp: T.nilable(::Believe::TeamUpdateParams::AnnualBudgetGbp::Variants),
          average_attendance: T.nilable(Float),
          contact_email: T.nilable(String),
          culture_score: T.nilable(Integer),
          founded_year: T.nilable(Integer),
          is_active: T.nilable(T::Boolean),
          league: T.nilable(::Believe::League::OrSymbol),
          name: T.nilable(String),
          nickname: T.nilable(String),
          primary_color: T.nilable(String),
          rival_teams: T.nilable(T::Array[String]),
          secondary_color: T.nilable(String),
          stadium: T.nilable(String),
          stadium_location: T.nilable(::Believe::GeoLocation::OrHash),
          values: T.nilable(::Believe::TeamValues::OrHash),
          website: T.nilable(String),
          win_percentage: T.nilable(Float),
          request_options: ::Believe::RequestOptions::OrHash
        )
          .returns(T.attached_class)
      end
      def self.new(
        team_id:,
        annual_budget_gbp: nil,
        average_attendance: nil,
        contact_email: nil,
        culture_score: nil,
        founded_year: nil,
        is_active: nil,
        # Football leagues.
      league: nil,
        name: nil,
        nickname: nil,
        primary_color: nil,
        rival_teams: nil,
        secondary_color: nil,
        stadium: nil,
        # Geographic coordinates for a location.
      stadium_location: nil,
        # Core values that define a team's culture.
      values: nil,
        website: nil,
        win_percentage: nil,
        request_options: {}
      ); end

      sig do
        override
          .returns(
            {
              team_id: String,
              annual_budget_gbp: T.nilable(::Believe::TeamUpdateParams::AnnualBudgetGbp::Variants),
              average_attendance: T.nilable(Float),
              contact_email: T.nilable(String),
              culture_score: T.nilable(Integer),
              founded_year: T.nilable(Integer),
              is_active: T.nilable(T::Boolean),
              league: T.nilable(::Believe::League::OrSymbol),
              name: T.nilable(String),
              nickname: T.nilable(String),
              primary_color: T.nilable(String),
              rival_teams: T.nilable(T::Array[String]),
              secondary_color: T.nilable(String),
              stadium: T.nilable(String),
              stadium_location: T.nilable(::Believe::GeoLocation),
              values: T.nilable(::Believe::TeamValues),
              website: T.nilable(String),
              win_percentage: T.nilable(Float),
              request_options: ::Believe::RequestOptions
            }
          )
      end
      def to_hash; end

      module AnnualBudgetGbp
        extend ::Believe::Internal::Type::Union

        Variants = T.type_alias { T.any(Float, String) }

        sig { override.returns(T::Array[::Believe::TeamUpdateParams::AnnualBudgetGbp::Variants]) }
        def self.variants; end
      end
    end
  end
end
