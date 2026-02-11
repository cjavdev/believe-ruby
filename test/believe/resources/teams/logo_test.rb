# frozen_string_literal: true

require_relative "../../test_helper"

class Believe::Test::Resources::Teams::LogoTest < Believe::Test::ResourceTest
  def test_delete_required_params
    skip("Prism tests are disabled")

    response = @believe.teams.logo.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", team_id: "team_id")

    assert_pattern do
      response => nil
    end
  end

  def test_download_required_params
    skip("Prism tests are disabled")

    response = @believe.teams.logo.download("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e", team_id: "team_id")

    assert_pattern do
      response => Believe::Internal::Type::Unknown
    end
  end

  def test_upload_required_params
    skip("Prism tests are disabled")

    response = @believe.teams.logo.upload("team_id", file: Pathname(__FILE__))

    assert_pattern do
      response => Believe::Teams::FileUpload
    end

    assert_pattern do
      response => {
        checksum_sha256: String,
        content_type: String,
        file_id: String,
        filename: String,
        size_bytes: Integer,
        uploaded_at: Time
      }
    end
  end
end
