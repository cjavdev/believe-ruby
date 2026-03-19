# frozen_string_literal: true

require_relative "../test_helper"

class Believe::Test::Resources::WebhooksTest < Believe::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @believe.webhooks.create(url: "https://example.com/webhooks")

    assert_pattern do
      response => Believe::Models::WebhookCreateResponse
    end

    assert_pattern do
      response => {
        webhook: Believe::RegisteredWebhook,
        message: String | nil,
        ted_says: String | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @believe.webhooks.retrieve("webhook_id")

    assert_pattern do
      response => Believe::RegisteredWebhook
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        event_types: ^(Believe::Internal::Type::ArrayOf[enum: Believe::RegisteredWebhook::EventType]),
        secret: String,
        url: String,
        description: String | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @believe.webhooks.list

    assert_pattern do
      response => ^(Believe::Internal::Type::ArrayOf[Believe::RegisteredWebhook])
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @believe.webhooks.delete("webhook_id")

    assert_pattern do
      response => ^(Believe::Internal::Type::HashOf[Believe::Internal::Type::Unknown])
    end
  end

  def test_trigger_event_required_params
    skip("Mock server tests are disabled")

    response = @believe.webhooks.trigger_event(event_type: :"match.completed")

    assert_pattern do
      response => Believe::Models::WebhookTriggerEventResponse
    end

    assert_pattern do
      response => {
        deliveries: ^(Believe::Internal::Type::ArrayOf[Believe::Models::WebhookTriggerEventResponse::Delivery]),
        event_id: String,
        event_type: Believe::Models::WebhookTriggerEventResponse::EventType,
        successful_deliveries: Integer,
        ted_says: String,
        total_webhooks: Integer
      }
    end
  end
end
