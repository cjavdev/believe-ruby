# frozen_string_literal: true

require_relative "../test_helper"

class Believe::Test::Resources::TeamMembersTest < ::Believe::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @believe.team_members.create(
        member: {
          character_id: "jamie-tartt",
          jersey_number: 9,
          position: :forward,
          team_id: "afc-richmond",
          years_with_team: 3,
          member_type: :player
        }
      )

    assert_pattern do
      response => ::Believe::Models::TeamMemberCreateResponse
    end

    assert_pattern do
      case response
      in ::Believe::Player
      in ::Believe::Coach
      in ::Believe::MedicalStaff
      in ::Believe::EquipmentManager
      end
    end

    assert_pattern do
      case response
      in {
        member_type: :player,
        id: String,
        character_id: String,
        jersey_number: Integer,
        position: ::Believe::Position,
        team_id: String,
        years_with_team: Integer,
        assists: Integer | nil,
        goals_scored: Integer | nil,
        is_captain: ::Believe::Internal::Type::Boolean | nil
      }
      in {
        member_type: :coach,
        id: String,
        character_id: String,
        specialty: ::Believe::CoachSpecialty,
        team_id: String,
        years_with_team: Integer,
        certifications: ^(::Believe::Internal::Type::ArrayOf[String]) | nil,
        win_rate: Float | nil
      }
      in {
        member_type: :medical_staff,
        id: String,
        character_id: String,
        specialty: ::Believe::MedicalSpecialty,
        team_id: String,
        years_with_team: Integer,
        license_number: String | nil,
        qualifications: ^(::Believe::Internal::Type::ArrayOf[String]) | nil
      }
      in {
        member_type: :equipment_manager,
        id: String,
        character_id: String,
        team_id: String,
        years_with_team: Integer,
        is_head_kitman: ::Believe::Internal::Type::Boolean | nil,
        responsibilities: ^(::Believe::Internal::Type::ArrayOf[String]) | nil
      }
      end
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @believe.team_members.retrieve("member_id")

    assert_pattern do
      response => ::Believe::Models::TeamMemberRetrieveResponse
    end

    assert_pattern do
      case response
      in ::Believe::Player
      in ::Believe::Coach
      in ::Believe::MedicalStaff
      in ::Believe::EquipmentManager
      end
    end

    assert_pattern do
      case response
      in {
        member_type: :player,
        id: String,
        character_id: String,
        jersey_number: Integer,
        position: ::Believe::Position,
        team_id: String,
        years_with_team: Integer,
        assists: Integer | nil,
        goals_scored: Integer | nil,
        is_captain: ::Believe::Internal::Type::Boolean | nil
      }
      in {
        member_type: :coach,
        id: String,
        character_id: String,
        specialty: ::Believe::CoachSpecialty,
        team_id: String,
        years_with_team: Integer,
        certifications: ^(::Believe::Internal::Type::ArrayOf[String]) | nil,
        win_rate: Float | nil
      }
      in {
        member_type: :medical_staff,
        id: String,
        character_id: String,
        specialty: ::Believe::MedicalSpecialty,
        team_id: String,
        years_with_team: Integer,
        license_number: String | nil,
        qualifications: ^(::Believe::Internal::Type::ArrayOf[String]) | nil
      }
      in {
        member_type: :equipment_manager,
        id: String,
        character_id: String,
        team_id: String,
        years_with_team: Integer,
        is_head_kitman: ::Believe::Internal::Type::Boolean | nil,
        responsibilities: ^(::Believe::Internal::Type::ArrayOf[String]) | nil
      }
      end
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @believe.team_members.update("member_id", updates: {})

    assert_pattern do
      response => ::Believe::Models::TeamMemberUpdateResponse
    end

    assert_pattern do
      case response
      in ::Believe::Player
      in ::Believe::Coach
      in ::Believe::MedicalStaff
      in ::Believe::EquipmentManager
      end
    end

    assert_pattern do
      case response
      in {
        member_type: :player,
        id: String,
        character_id: String,
        jersey_number: Integer,
        position: ::Believe::Position,
        team_id: String,
        years_with_team: Integer,
        assists: Integer | nil,
        goals_scored: Integer | nil,
        is_captain: ::Believe::Internal::Type::Boolean | nil
      }
      in {
        member_type: :coach,
        id: String,
        character_id: String,
        specialty: ::Believe::CoachSpecialty,
        team_id: String,
        years_with_team: Integer,
        certifications: ^(::Believe::Internal::Type::ArrayOf[String]) | nil,
        win_rate: Float | nil
      }
      in {
        member_type: :medical_staff,
        id: String,
        character_id: String,
        specialty: ::Believe::MedicalSpecialty,
        team_id: String,
        years_with_team: Integer,
        license_number: String | nil,
        qualifications: ^(::Believe::Internal::Type::ArrayOf[String]) | nil
      }
      in {
        member_type: :equipment_manager,
        id: String,
        character_id: String,
        team_id: String,
        years_with_team: Integer,
        is_head_kitman: ::Believe::Internal::Type::Boolean | nil,
        responsibilities: ^(::Believe::Internal::Type::ArrayOf[String]) | nil
      }
      end
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @believe.team_members.list

    assert_pattern do
      response => ::Believe::Internal::SkipLimitPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ::Believe::Models::TeamMemberListResponse
    end

    assert_pattern do
      case row
      in ::Believe::Player
      in ::Believe::Coach
      in ::Believe::MedicalStaff
      in ::Believe::EquipmentManager
      end
    end

    assert_pattern do
      case row
      in {
        member_type: :player,
        id: String,
        character_id: String,
        jersey_number: Integer,
        position: ::Believe::Position,
        team_id: String,
        years_with_team: Integer,
        assists: Integer | nil,
        goals_scored: Integer | nil,
        is_captain: ::Believe::Internal::Type::Boolean | nil
      }
      in {
        member_type: :coach,
        id: String,
        character_id: String,
        specialty: ::Believe::CoachSpecialty,
        team_id: String,
        years_with_team: Integer,
        certifications: ^(::Believe::Internal::Type::ArrayOf[String]) | nil,
        win_rate: Float | nil
      }
      in {
        member_type: :medical_staff,
        id: String,
        character_id: String,
        specialty: ::Believe::MedicalSpecialty,
        team_id: String,
        years_with_team: Integer,
        license_number: String | nil,
        qualifications: ^(::Believe::Internal::Type::ArrayOf[String]) | nil
      }
      in {
        member_type: :equipment_manager,
        id: String,
        character_id: String,
        team_id: String,
        years_with_team: Integer,
        is_head_kitman: ::Believe::Internal::Type::Boolean | nil,
        responsibilities: ^(::Believe::Internal::Type::ArrayOf[String]) | nil
      }
      end
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @believe.team_members.delete("member_id")

    assert_pattern do
      response => nil
    end
  end

  def test_list_coaches
    skip("Mock server tests are disabled")

    response = @believe.team_members.list_coaches

    assert_pattern do
      response => ::Believe::Internal::SkipLimitPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ::Believe::Coach
    end

    assert_pattern do
      row => {
        id: String,
        character_id: String,
        specialty: ::Believe::CoachSpecialty,
        team_id: String,
        years_with_team: Integer,
        certifications: ^(::Believe::Internal::Type::ArrayOf[String]) | nil,
        member_type: ::Believe::Coach::MemberType | nil,
        win_rate: Float | nil
      }
    end
  end

  def test_list_players
    skip("Mock server tests are disabled")

    response = @believe.team_members.list_players

    assert_pattern do
      response => ::Believe::Internal::SkipLimitPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ::Believe::Player
    end

    assert_pattern do
      row => {
        id: String,
        character_id: String,
        jersey_number: Integer,
        position: ::Believe::Position,
        team_id: String,
        years_with_team: Integer,
        assists: Integer | nil,
        goals_scored: Integer | nil,
        is_captain: ::Believe::Internal::Type::Boolean | nil,
        member_type: ::Believe::Player::MemberType | nil
      }
    end
  end

  def test_list_staff
    skip("Mock server tests are disabled")

    response = @believe.team_members.list_staff

    assert_pattern do
      response => ::Believe::Internal::SkipLimitPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ::Believe::Models::TeamMemberListStaffResponse
    end

    assert_pattern do
      case row
      in ::Believe::MedicalStaff
      in ::Believe::EquipmentManager
      end
    end
  end
end
