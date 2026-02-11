# frozen_string_literal: true

require_relative "../test_helper"

class Believe::Test::Resources::VersionTest < Believe::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @believe.version.retrieve

    assert_pattern do
      response => Believe::Internal::Type::Unknown
    end
  end
end
