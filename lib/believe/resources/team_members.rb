# frozen_string_literal: true

module Believe
  module Resources
    # Team members with union types (oneOf) - Players, Coaches, Medical Staff,
    # Equipment Managers
    class TeamMembers
      # Add a new team member to a team.
      #
      # The request body is a **union type (oneOf)** - you must include the
      # `member_type` discriminator field:
      #
      # - `"member_type": "player"` - Creates a player (requires position,
      #   jersey_number, etc.)
      # - `"member_type": "coach"` - Creates a coach (requires specialty, etc.)
      # - `"member_type": "medical_staff"` - Creates medical staff (requires medical
      #   specialty, etc.)
      # - `"member_type": "equipment_manager"` - Creates equipment manager (requires
      #   responsibilities, etc.)
      #
      # The `character_id` field references an existing character from
      # `/characters/{id}`.
      #
      # **Example for creating a player:**
      #
      # ```json
      # {
      #   "member_type": "player",
      #   "character_id": "sam-obisanya",
      #   "team_id": "afc-richmond",
      #   "years_with_team": 2,
      #   "position": "midfielder",
      #   "jersey_number": 24,
      #   "goals_scored": 12,
      #   "assists": 15
      # }
      # ```
      #
      # @overload create(member:, request_options: {})
      #
      # @param member [::Believe::Models::TeamMemberCreateParams::Member::Player, ::Believe::Models::TeamMemberCreateParams::Member::Coach, ::Believe::Models::TeamMemberCreateParams::Member::MedicalStaff, ::Believe::Models::TeamMemberCreateParams::Member::EquipmentManager] A football player on the team.
      #
      # @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [::Believe::Models::Player, ::Believe::Models::Coach, ::Believe::Models::MedicalStaff, ::Believe::Models::EquipmentManager]
      #
      # @see ::Believe::Models::TeamMemberCreateParams
      def create(params)
        parsed, options = ::Believe::TeamMemberCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "team-members",
          body: parsed[:member],
          model: ::Believe::Models::TeamMemberCreateResponse,
          options: options
        )
      end

      # Retrieve detailed information about a specific team member.
      #
      # The response is a **union type (oneOf)** - the actual shape depends on the
      # member's type:
      #
      # - **player**: Includes position, jersey_number, goals_scored, assists,
      #   is_captain
      # - **coach**: Includes specialty, certifications, win_rate
      # - **medical_staff**: Includes specialty, qualifications, license_number
      # - **equipment_manager**: Includes responsibilities, is_head_kitman
      #
      # Use `character_id` to fetch full character details from
      # `/characters/{character_id}`.
      #
      # @overload retrieve(member_id, request_options: {})
      #
      # @param member_id [String]
      # @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [::Believe::Models::Player, ::Believe::Models::Coach, ::Believe::Models::MedicalStaff, ::Believe::Models::EquipmentManager]
      #
      # @see ::Believe::Models::TeamMemberRetrieveParams
      def retrieve(member_id, params = {})
        @client.request(
          method: :get,
          path: ["team-members/%1$s", member_id],
          model: ::Believe::Models::TeamMemberRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Update specific fields of an existing team member. Fields vary by member type.
      #
      # @overload update(member_id, updates:, request_options: {})
      #
      # @param member_id [String]
      #
      # @param updates [::Believe::Models::TeamMemberUpdateParams::Updates::PlayerUpdate, ::Believe::Models::TeamMemberUpdateParams::Updates::CoachUpdate, ::Believe::Models::TeamMemberUpdateParams::Updates::MedicalStaffUpdate, ::Believe::Models::TeamMemberUpdateParams::Updates::EquipmentManagerUpdate] Update model for players.
      #
      # @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [::Believe::Models::Player, ::Believe::Models::Coach, ::Believe::Models::MedicalStaff, ::Believe::Models::EquipmentManager]
      #
      # @see ::Believe::Models::TeamMemberUpdateParams
      def update(member_id, params)
        parsed, options = ::Believe::TeamMemberUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["team-members/%1$s", member_id],
          body: parsed[:updates],
          model: ::Believe::Models::TeamMemberUpdateResponse,
          options: options
        )
      end

      # Get a paginated list of all team members.
      #
      # This endpoint demonstrates **union types (oneOf)** in the response. Each team
      # member can be one of: Player, Coach, MedicalStaff, or EquipmentManager. The
      # `member_type` field acts as a discriminator to determine the shape of each
      # object.
      #
      # @overload list(limit: nil, member_type: nil, skip: nil, team_id: nil, request_options: {})
      #
      # @param limit [Integer] Maximum number of items to return (max: 100)
      #
      # @param member_type [Symbol, ::Believe::Models::TeamMemberListParams::MemberType, nil] Filter by member type
      #
      # @param skip [Integer] Number of items to skip (offset)
      #
      # @param team_id [String, nil] Filter by team ID
      #
      # @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [::Believe::Internal::SkipLimitPage<::Believe::Models::Player, ::Believe::Models::Coach, ::Believe::Models::MedicalStaff, ::Believe::Models::EquipmentManager>]
      #
      # @see ::Believe::Models::TeamMemberListParams
      def list(params = {})
        parsed, options = ::Believe::TeamMemberListParams.dump_request(params)
        query = ::Believe::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "team-members",
          query: query,
          page: ::Believe::Internal::SkipLimitPage,
          model: ::Believe::Models::TeamMemberListResponse,
          options: options
        )
      end

      # Remove a team member from the roster.
      #
      # @overload delete(member_id, request_options: {})
      #
      # @param member_id [String]
      # @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see ::Believe::Models::TeamMemberDeleteParams
      def delete(member_id, params = {})
        @client.request(
          method: :delete,
          path: ["team-members/%1$s", member_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Get only coaches (filtered subset of team members).
      #
      # @overload list_coaches(limit: nil, skip: nil, specialty: nil, team_id: nil, request_options: {})
      #
      # @param limit [Integer] Maximum number of items to return (max: 100)
      #
      # @param skip [Integer] Number of items to skip (offset)
      #
      # @param specialty [Symbol, ::Believe::Models::CoachSpecialty, nil] Filter by specialty
      #
      # @param team_id [String, nil] Filter by team ID
      #
      # @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [::Believe::Internal::SkipLimitPage<::Believe::Models::Coach>]
      #
      # @see ::Believe::Models::TeamMemberListCoachesParams
      def list_coaches(params = {})
        parsed, options = ::Believe::TeamMemberListCoachesParams.dump_request(params)
        query = ::Believe::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "team-members/coaches/",
          query: query,
          page: ::Believe::Internal::SkipLimitPage,
          model: ::Believe::Coach,
          options: options
        )
      end

      # Get only players (filtered subset of team members).
      #
      # @overload list_players(limit: nil, position: nil, skip: nil, team_id: nil, request_options: {})
      #
      # @param limit [Integer] Maximum number of items to return (max: 100)
      #
      # @param position [Symbol, ::Believe::Models::Position, nil] Filter by position
      #
      # @param skip [Integer] Number of items to skip (offset)
      #
      # @param team_id [String, nil] Filter by team ID
      #
      # @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [::Believe::Internal::SkipLimitPage<::Believe::Models::Player>]
      #
      # @see ::Believe::Models::TeamMemberListPlayersParams
      def list_players(params = {})
        parsed, options = ::Believe::TeamMemberListPlayersParams.dump_request(params)
        query = ::Believe::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "team-members/players/",
          query: query,
          page: ::Believe::Internal::SkipLimitPage,
          model: ::Believe::Player,
          options: options
        )
      end

      # Get all staff members (medical staff and equipment managers).
      #
      # This demonstrates a **narrower union type** - the response is oneOf MedicalStaff
      # or EquipmentManager.
      #
      # @overload list_staff(limit: nil, skip: nil, team_id: nil, request_options: {})
      #
      # @param limit [Integer] Maximum number of items to return (max: 100)
      #
      # @param skip [Integer] Number of items to skip (offset)
      #
      # @param team_id [String, nil] Filter by team ID
      #
      # @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [::Believe::Internal::SkipLimitPage<::Believe::Models::MedicalStaff, ::Believe::Models::EquipmentManager>]
      #
      # @see ::Believe::Models::TeamMemberListStaffParams
      def list_staff(params = {})
        parsed, options = ::Believe::TeamMemberListStaffParams.dump_request(params)
        query = ::Believe::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "team-members/staff/",
          query: query,
          page: ::Believe::Internal::SkipLimitPage,
          model: ::Believe::Models::TeamMemberListStaffResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [::Believe::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
