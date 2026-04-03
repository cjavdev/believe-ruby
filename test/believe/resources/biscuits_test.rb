# frozen_string_literal: true

require_relative "../test_helper"

class Believe::Test::Resources::BiscuitsTest < ::Believe::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @believe.biscuits.retrieve("biscuit_id")

    assert_pattern do
      response => ::Believe::Biscuit
    end

    assert_pattern do
      response => {
        id: String,
        message: String,
        pairs_well_with: String,
        ted_note: String,
        type: ::Believe::Biscuit::Type,
        warmth_level: Integer
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @believe.biscuits.list

    assert_pattern do
      response => ::Believe::Internal::SkipLimitPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ::Believe::Biscuit
    end

    assert_pattern do
      row => {
        id: String,
        message: String,
        pairs_well_with: String,
        ted_note: String,
        type: ::Believe::Biscuit::Type,
        warmth_level: Integer
      }
    end
  end

  def test_get_fresh
    skip("Mock server tests are disabled")

    response = @believe.biscuits.get_fresh

    assert_pattern do
      response => ::Believe::Biscuit
    end

    assert_pattern do
      response => {
        id: String,
        message: String,
        pairs_well_with: String,
        ted_note: String,
        type: ::Believe::Biscuit::Type,
        warmth_level: Integer
      }
    end
  end
end
