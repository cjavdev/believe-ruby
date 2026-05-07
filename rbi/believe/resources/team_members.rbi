# typed: strong

module Believe
  module Resources
    # Team members with union types (oneOf) - Players, Coaches, Medical Staff, Equipment Managers
    class TeamMembers
      # Add a new team member to a team.
      #
      # The request body is a **union type (oneOf)** - you must include the `member_type` discriminator field:
      # - `"member_type": "player"` - Creates a player (requires position, jersey_number, etc.)
      # - `"member_type": "coach"` - Creates a coach (requires specialty, etc.)
      # - `"member_type": "medical_staff"` - Creates medical staff (requires medical specialty, etc.)
      # - `"member_type": "equipment_manager"` - Creates equipment manager (requires responsibilities, etc.)
      #
      # The `character_id` field references an existing character from `/characters/{id}`.
      #
      # **Example for creating a player:**
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
      sig do
        params(
          member:
            T.any(
              ::Believe::TeamMemberCreateParams::Member::Player::OrHash,
              ::Believe::TeamMemberCreateParams::Member::Coach::OrHash,
              ::Believe::TeamMemberCreateParams::Member::MedicalStaff::OrHash,
              ::Believe::TeamMemberCreateParams::Member::EquipmentManager::OrHash
            ),
          request_options: ::Believe::RequestOptions::OrHash
        ).returns(::Believe::Models::TeamMemberCreateResponse::Variants)
      end
      def create(
        # A football player on the team.
        member:,
        request_options: {}
      )
      end

      # Retrieve detailed information about a specific team member.
      #
      # The response is a **union type (oneOf)** - the actual shape depends on the member's type:
      # - **player**: Includes position, jersey_number, goals_scored, assists, is_captain
      # - **coach**: Includes specialty, certifications, win_rate
      # - **medical_staff**: Includes specialty, qualifications, license_number
      # - **equipment_manager**: Includes responsibilities, is_head_kitman
      #
      # Use `character_id` to fetch full character details from `/characters/{character_id}`.
      sig do
        params(
          member_id: String,
          request_options: ::Believe::RequestOptions::OrHash
        ).returns(::Believe::Models::TeamMemberRetrieveResponse::Variants)
      end
      def retrieve(member_id, request_options: {})
      end

      # Update specific fields of an existing team member. Fields vary by member type.
      sig do
        params(
          member_id: String,
          updates:
            T.any(
              ::Believe::TeamMemberUpdateParams::Updates::PlayerUpdate::OrHash,
              ::Believe::TeamMemberUpdateParams::Updates::CoachUpdate::OrHash,
              ::Believe::TeamMemberUpdateParams::Updates::MedicalStaffUpdate::OrHash,
              ::Believe::TeamMemberUpdateParams::Updates::EquipmentManagerUpdate::OrHash
            ),
          request_options: ::Believe::RequestOptions::OrHash
        ).returns(::Believe::Models::TeamMemberUpdateResponse::Variants)
      end
      def update(
        member_id,
        # Update model for players.
        updates:,
        request_options: {}
      )
      end

      # Get a paginated list of all team members.
      #
      # This endpoint demonstrates **union types (oneOf)** in the response.
      # Each team member can be one of: Player, Coach, MedicalStaff, or EquipmentManager.
      # The `member_type` field acts as a discriminator to determine the shape of each object.
      sig do
        params(
          limit: Integer,
          member_type:
            T.nilable(::Believe::TeamMemberListParams::MemberType::OrSymbol),
          skip: Integer,
          team_id: T.nilable(String),
          request_options: ::Believe::RequestOptions::OrHash
        ).returns(
          ::Believe::Internal::SkipLimitPage[
            ::Believe::Models::TeamMemberListResponse::Variants
          ]
        )
      end
      def list(
        # Maximum number of items to return (max: 100)
        limit: nil,
        # Filter by member type
        member_type: nil,
        # Number of items to skip (offset)
        skip: nil,
        # Filter by team ID
        team_id: nil,
        request_options: {}
      )
      end

      # Remove a team member from the roster.
      sig do
        params(
          member_id: String,
          request_options: ::Believe::RequestOptions::OrHash
        ).void
      end
      def delete(member_id, request_options: {})
      end

      # Get only coaches (filtered subset of team members).
      sig do
        params(
          limit: Integer,
          skip: Integer,
          specialty: T.nilable(::Believe::CoachSpecialty::OrSymbol),
          team_id: T.nilable(String),
          request_options: ::Believe::RequestOptions::OrHash
        ).returns(::Believe::Internal::SkipLimitPage[::Believe::Coach])
      end
      def list_coaches(
        # Maximum number of items to return (max: 100)
        limit: nil,
        # Number of items to skip (offset)
        skip: nil,
        # Filter by specialty
        specialty: nil,
        # Filter by team ID
        team_id: nil,
        request_options: {}
      )
      end

      # Get only players (filtered subset of team members).
      sig do
        params(
          limit: Integer,
          position: T.nilable(::Believe::Position::OrSymbol),
          skip: Integer,
          team_id: T.nilable(String),
          request_options: ::Believe::RequestOptions::OrHash
        ).returns(::Believe::Internal::SkipLimitPage[::Believe::Player])
      end
      def list_players(
        # Maximum number of items to return (max: 100)
        limit: nil,
        # Filter by position
        position: nil,
        # Number of items to skip (offset)
        skip: nil,
        # Filter by team ID
        team_id: nil,
        request_options: {}
      )
      end

      # Get all staff members (medical staff and equipment managers).
      #
      # This demonstrates a **narrower union type** - the response is oneOf MedicalStaff or EquipmentManager.
      sig do
        params(
          limit: Integer,
          skip: Integer,
          team_id: T.nilable(String),
          request_options: ::Believe::RequestOptions::OrHash
        ).returns(
          ::Believe::Internal::SkipLimitPage[
            ::Believe::Models::TeamMemberListStaffResponse::Variants
          ]
        )
      end
      def list_staff(
        # Maximum number of items to return (max: 100)
        limit: nil,
        # Number of items to skip (offset)
        skip: nil,
        # Filter by team ID
        team_id: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: ::Believe::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
