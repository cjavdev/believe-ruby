# frozen_string_literal: true

require_relative "../test_helper"

class Believe::Test::Resources::TicketSalesTest < Believe::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @believe.ticket_sales.create(
        buyer_name: "Mae Green",
        currency: "GBP",
        discount: "9.00",
        match_id: "match-001",
        purchase_method: :online,
        quantity: 2,
        subtotal: "90.00",
        tax: "16.20",
        total: "97.20",
        unit_price: "45.00"
      )

    assert_pattern do
      response => ::Believe::TicketSale
    end

    assert_pattern do
      response => {
        id: String,
        buyer_name: String,
        currency: String,
        discount: String,
        match_id: String,
        purchase_method: ::Believe::PurchaseMethod,
        quantity: Integer,
        subtotal: String,
        tax: String,
        total: String,
        unit_price: String,
        buyer_email: String | nil,
        coupon_code: String | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @believe.ticket_sales.retrieve("ticket_sale_id")

    assert_pattern do
      response => ::Believe::TicketSale
    end

    assert_pattern do
      response => {
        id: String,
        buyer_name: String,
        currency: String,
        discount: String,
        match_id: String,
        purchase_method: ::Believe::PurchaseMethod,
        quantity: Integer,
        subtotal: String,
        tax: String,
        total: String,
        unit_price: String,
        buyer_email: String | nil,
        coupon_code: String | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @believe.ticket_sales.update("ticket_sale_id")

    assert_pattern do
      response => ::Believe::TicketSale
    end

    assert_pattern do
      response => {
        id: String,
        buyer_name: String,
        currency: String,
        discount: String,
        match_id: String,
        purchase_method: ::Believe::PurchaseMethod,
        quantity: Integer,
        subtotal: String,
        tax: String,
        total: String,
        unit_price: String,
        buyer_email: String | nil,
        coupon_code: String | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @believe.ticket_sales.list

    assert_pattern do
      response => ::Believe::Internal::SkipLimitPage
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => ::Believe::TicketSale
    end

    assert_pattern do
      row => {
        id: String,
        buyer_name: String,
        currency: String,
        discount: String,
        match_id: String,
        purchase_method: ::Believe::PurchaseMethod,
        quantity: Integer,
        subtotal: String,
        tax: String,
        total: String,
        unit_price: String,
        buyer_email: String | nil,
        coupon_code: String | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @believe.ticket_sales.delete("ticket_sale_id")

    assert_pattern do
      response => nil
    end
  end
end
