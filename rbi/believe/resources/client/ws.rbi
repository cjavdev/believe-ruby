# typed: strong

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
        sig { params(request_options: ::Believe::RequestOptions::OrHash).void }
        def test_(request_options: {})
        end

        # @api private
        sig { params(client: ::Believe::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
