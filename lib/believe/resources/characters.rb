# frozen_string_literal: true

module Believe
  module Resources
    class Characters
      # Add a new character to the Ted Lasso universe.
      #
      # @overload create(background:, emotional_stats:, name:, personality_traits:, role:, date_of_birth: nil, email: nil, growth_arcs: nil, height_meters: nil, profile_image_url: nil, salary_gbp: nil, signature_quotes: nil, team_id: nil, request_options: {})
      #
      # @param background [String] Character background and history
      #
      # @param emotional_stats [Believe::Models::EmotionalStats] Emotional intelligence stats
      #
      # @param name [String] Character's full name
      #
      # @param personality_traits [Array<String>] Key personality traits
      #
      # @param role [Symbol, Believe::Models::CharacterRole] Character's role
      #
      # @param date_of_birth [Date, nil] Character's date of birth
      #
      # @param email [String, nil] Character's email address
      #
      # @param growth_arcs [Array<Believe::Models::GrowthArc>] Character development across seasons
      #
      # @param height_meters [Float, nil] Height in meters
      #
      # @param profile_image_url [String, nil] URL to character's profile image
      #
      # @param salary_gbp [Float, String, nil] Annual salary in GBP
      #
      # @param signature_quotes [Array<String>] Memorable quotes from this character
      #
      # @param team_id [String, nil] ID of the team they belong to
      #
      # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Believe::Models::Character]
      #
      # @see Believe::Models::CharacterCreateParams
      def create(params)
        parsed, options = Believe::CharacterCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "characters",
          body: parsed,
          model: Believe::Character,
          options: options
        )
      end

      # Retrieve detailed information about a specific character.
      #
      # @overload retrieve(character_id, request_options: {})
      #
      # @param character_id [String]
      # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Believe::Models::Character]
      #
      # @see Believe::Models::CharacterRetrieveParams
      def retrieve(character_id, params = {})
        @client.request(
          method: :get,
          path: ["characters/%1$s", character_id],
          model: Believe::Character,
          options: params[:request_options]
        )
      end

      # Update specific fields of an existing character.
      #
      # @overload update(character_id, background: nil, date_of_birth: nil, email: nil, emotional_stats: nil, growth_arcs: nil, height_meters: nil, name: nil, personality_traits: nil, profile_image_url: nil, role: nil, salary_gbp: nil, signature_quotes: nil, team_id: nil, request_options: {})
      #
      # @param character_id [String]
      #
      # @param background [String, nil]
      #
      # @param date_of_birth [Date, nil]
      #
      # @param email [String, nil]
      #
      # @param emotional_stats [Believe::Models::EmotionalStats, nil] Emotional intelligence statistics for a character.
      #
      # @param growth_arcs [Array<Believe::Models::GrowthArc>, nil]
      #
      # @param height_meters [Float, nil]
      #
      # @param name [String, nil]
      #
      # @param personality_traits [Array<String>, nil]
      #
      # @param profile_image_url [String, nil]
      #
      # @param role [Symbol, Believe::Models::CharacterRole, nil] Roles characters can have.
      #
      # @param salary_gbp [Float, String, nil]
      #
      # @param signature_quotes [Array<String>, nil]
      #
      # @param team_id [String, nil]
      #
      # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Believe::Models::Character]
      #
      # @see Believe::Models::CharacterUpdateParams
      def update(character_id, params = {})
        parsed, options = Believe::CharacterUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["characters/%1$s", character_id],
          body: parsed,
          model: Believe::Character,
          options: options
        )
      end

      # Get a paginated list of Ted Lasso characters.
      #
      # @overload list(limit: nil, min_optimism: nil, role: nil, skip: nil, team_id: nil, request_options: {})
      #
      # @param limit [Integer] Maximum number of items to return (max: 100)
      #
      # @param min_optimism [Integer, nil] Minimum optimism score
      #
      # @param role [Symbol, Believe::Models::CharacterRole, nil] Filter by role
      #
      # @param skip [Integer] Number of items to skip (offset)
      #
      # @param team_id [String, nil] Filter by team ID
      #
      # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Believe::Internal::SkipLimitPage<Believe::Models::Character>]
      #
      # @see Believe::Models::CharacterListParams
      def list(params = {})
        parsed, options = Believe::CharacterListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "characters",
          query: parsed,
          page: Believe::Internal::SkipLimitPage,
          model: Believe::Character,
          options: options
        )
      end

      # Remove a character from the database.
      #
      # @overload delete(character_id, request_options: {})
      #
      # @param character_id [String]
      # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Believe::Models::CharacterDeleteParams
      def delete(character_id, params = {})
        @client.request(
          method: :delete,
          path: ["characters/%1$s", character_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Get all signature quotes from a specific character.
      #
      # @overload get_quotes(character_id, request_options: {})
      #
      # @param character_id [String]
      # @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<String>]
      #
      # @see Believe::Models::CharacterGetQuotesParams
      def get_quotes(character_id, params = {})
        @client.request(
          method: :get,
          path: ["characters/%1$s/quotes", character_id],
          model: Believe::Internal::Type::ArrayOf[String],
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Believe::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
