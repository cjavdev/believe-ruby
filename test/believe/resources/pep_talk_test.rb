# frozen_string_literal: true

require_relative "../test_helper"

class Believe::Test::Resources::PepTalkTest < Believe::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @believe.pep_talk.retrieve

    assert_pattern do
      response => Believe::Models::PepTalkRetrieveResponse
    end

    assert_pattern do
      response => {
        chunks: ^(Believe::Internal::Type::ArrayOf[Believe::Models::PepTalkRetrieveResponse::Chunk]),
        text: String
      }
    end
  end
end
