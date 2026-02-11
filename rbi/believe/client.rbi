# typed: strong

module Believe
  class Client < Believe::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    sig { returns(String) }
    attr_reader :api_key

    sig { returns(Believe::Resources::Characters) }
    attr_reader :characters

    sig { returns(Believe::Resources::Teams) }
    attr_reader :teams

    sig { returns(Believe::Resources::Matches) }
    attr_reader :matches

    sig { returns(Believe::Resources::Episodes) }
    attr_reader :episodes

    sig { returns(Believe::Resources::Quotes) }
    attr_reader :quotes

    sig { returns(Believe::Resources::Believe) }
    attr_reader :believe

    sig { returns(Believe::Resources::Conflicts) }
    attr_reader :conflicts

    sig { returns(Believe::Resources::Reframe) }
    attr_reader :reframe

    sig { returns(Believe::Resources::Press) }
    attr_reader :press

    sig { returns(Believe::Resources::Coaching) }
    attr_reader :coaching

    sig { returns(Believe::Resources::Biscuits) }
    attr_reader :biscuits

    sig { returns(Believe::Resources::PepTalk) }
    attr_reader :pep_talk

    sig { returns(Believe::Resources::Stream) }
    attr_reader :stream

    sig { returns(Believe::Resources::TeamMembers) }
    attr_reader :team_members

    sig { returns(Believe::Resources::Webhooks) }
    attr_reader :webhooks

    sig { returns(Believe::Resources::Health) }
    attr_reader :health

    sig { returns(Believe::Resources::Version) }
    attr_reader :version

    sig { returns(Believe::Resources::Client) }
    attr_reader :client_

    # Get a warm welcome and overview of available endpoints.
    sig do
      params(request_options: Believe::RequestOptions::OrHash).returns(
        T.anything
      )
    end
    def get_welcome(request_options: {})
    end

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        api_key: T.nilable(String),
        base_url: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      ).returns(T.attached_class)
    end
    def self.new(
      # Defaults to `ENV["BELIEVE_API_KEY"]`
      api_key: ENV["BELIEVE_API_KEY"],
      # Override the default base URL for the API, e.g.,
      # `"https://api.example.com/v2/"`. Defaults to `ENV["BELIEVE_BASE_URL"]`
      base_url: ENV["BELIEVE_BASE_URL"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: Believe::Client::DEFAULT_MAX_RETRIES,
      timeout: Believe::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: Believe::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: Believe::Client::DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
