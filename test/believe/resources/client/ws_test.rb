# frozen_string_literal: true

require_relative "../../test_helper"

class Believe::Test::Resources::Client::WsTest < ::Believe::Test::ResourceTest
  def test_test_
    skip("Mock server tests are disabled")

    response = @believe.client_.ws.test_

    assert_pattern do
      response => nil
    end
  end
end
