# frozen_string_literal: true

module Believe
  class Client < ::Believe::Internal::Transport::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60.0

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # @return [String]
    attr_reader :api_key

    # Operations related to Ted Lasso characters
    # @return [::Believe::Resources::Characters]
    attr_reader :characters

    # Operations related to football teams
    # @return [::Believe::Resources::Teams]
    attr_reader :teams

    # @return [::Believe::Resources::Matches]
    attr_reader :matches

    # Operations related to TV episodes
    # @return [::Believe::Resources::Episodes]
    attr_reader :episodes

    # Memorable quotes from the show
    # @return [::Believe::Resources::Quotes]
    attr_reader :quotes

    # Interactive endpoints for motivation and guidance
    # @return [::Believe::Resources::Believe]
    attr_reader :believe

    # Interactive endpoints for motivation and guidance
    # @return [::Believe::Resources::Conflicts]
    attr_reader :conflicts

    # Interactive endpoints for motivation and guidance
    # @return [::Believe::Resources::Reframe]
    attr_reader :reframe

    # Interactive endpoints for motivation and guidance
    # @return [::Believe::Resources::Press]
    attr_reader :press

    # @return [::Believe::Resources::Coaching]
    attr_reader :coaching

    # Interactive endpoints for motivation and guidance
    # @return [::Believe::Resources::Biscuits]
    attr_reader :biscuits

    # Server-Sent Events (SSE) streaming endpoints
    # @return [::Believe::Resources::PepTalk]
    attr_reader :pep_talk

    # Server-Sent Events (SSE) streaming endpoints
    # @return [::Believe::Resources::Stream]
    attr_reader :stream

    # Team members with union types (oneOf) - Players, Coaches, Medical Staff,
    # Equipment Managers
    # @return [::Believe::Resources::TeamMembers]
    attr_reader :team_members

    # Register webhook endpoints and trigger events for testing
    # @return [::Believe::Resources::Webhooks]
    attr_reader :webhooks

    # Ticket sales with 300 records for practicing pagination, filtering, and
    # financial data
    # @return [::Believe::Resources::TicketSales]
    attr_reader :ticket_sales

    # @return [::Believe::Resources::Health]
    attr_reader :health

    # @return [::Believe::Resources::Version]
    attr_reader :version

    # @return [::Believe::Resources::Client]
    attr_reader :client_

    # Get a warm welcome and overview of available endpoints.
    #
    # @overload get_welcome(request_options: {})
    #
    # @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}, nil]
    #
    # @return [Object]
    #
    # @see ::Believe::Models::ClientGetWelcomeParams
    def get_welcome(params = {})
      request(
        method: :get,
        path: "",
        model: ::Believe::Internal::Type::Unknown,
        options: params[:request_options]
      )
    end

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_headers
      return {} if @api_key.nil?

      {"authorization" => "Bearer #{@api_key}"}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param api_key [String, nil] Defaults to `ENV["BELIEVE_API_KEY"]`
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g.,
    # `"https://api.example.com/v2/"`. Defaults to `ENV["BELIEVE_BASE_URL"]`
    #
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    #
    # @param timeout [Float]
    #
    # @param initial_retry_delay [Float]
    #
    # @param max_retry_delay [Float]
    def initialize(
      api_key: ENV["BELIEVE_API_KEY"],
      base_url: ENV["BELIEVE_BASE_URL"],
      max_retries: self.class::DEFAULT_MAX_RETRIES,
      timeout: self.class::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: self.class::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: self.class::DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= "https://believe.cjav.dev"

      if api_key.nil?
        raise ArgumentError.new("api_key is required, and can be set via environ: \"BELIEVE_API_KEY\"")
      end

      headers = {}
      custom_headers_env = ENV["BELIEVE_CUSTOM_HEADERS"]
      unless custom_headers_env.nil?
        parsed = {}
        custom_headers_env.split("\n").each do |line|
          colon = line.index(":")
          unless colon.nil?
            parsed[line[0...colon].strip] = line[(colon + 1)..].strip
          end
        end
        headers = parsed.merge(headers)
      end

      @api_key = api_key.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay,
        headers: headers
      )

      @characters = ::Believe::Resources::Characters.new(client: self)
      @teams = ::Believe::Resources::Teams.new(client: self)
      @matches = ::Believe::Resources::Matches.new(client: self)
      @episodes = ::Believe::Resources::Episodes.new(client: self)
      @quotes = ::Believe::Resources::Quotes.new(client: self)
      @believe = ::Believe::Resources::Believe.new(client: self)
      @conflicts = ::Believe::Resources::Conflicts.new(client: self)
      @reframe = ::Believe::Resources::Reframe.new(client: self)
      @press = ::Believe::Resources::Press.new(client: self)
      @coaching = ::Believe::Resources::Coaching.new(client: self)
      @biscuits = ::Believe::Resources::Biscuits.new(client: self)
      @pep_talk = ::Believe::Resources::PepTalk.new(client: self)
      @stream = ::Believe::Resources::Stream.new(client: self)
      @team_members = ::Believe::Resources::TeamMembers.new(client: self)
      @webhooks = ::Believe::Resources::Webhooks.new(client: self)
      @ticket_sales = ::Believe::Resources::TicketSales.new(client: self)
      @health = ::Believe::Resources::Health.new(client: self)
      @version = ::Believe::Resources::Version.new(client: self)
      @client_ = ::Believe::Resources::Client.new(client: self)
    end
  end
end
