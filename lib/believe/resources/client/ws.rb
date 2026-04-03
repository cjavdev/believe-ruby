# frozen_string_literal: true

module Believe
  module Resources
    class Client
      # WebSocket endpoints for real-time bidirectional communication - Live match
      # simulation
      class Ws
        # Simple WebSocket test endpoint for connectivity testing.
        #
        # Connect to test WebSocket functionality. The server will:
        #
        # 1. Send a welcome message on connection
        # 2. Echo back any message you send
        #
        # ## Example
        #
        # ```javascript
        # const ws = new WebSocket("ws://localhost:8000/ws/test");
        # ws.onmessage = (event) => console.log(event.data);
        # ws.send("Hello!"); // Server responds with echo
        # ```
        #
        # @overload test_(request_options: {})
        #
        # @param request_options [::Believe::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see ::Believe::Models::Client::WTestParams
        def test_(params = {})
          @client.request(method: :get, path: "ws/test", model: NilClass, options: params[:request_options])
        end

        # @api private
        #
        # @param client [::Believe::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
