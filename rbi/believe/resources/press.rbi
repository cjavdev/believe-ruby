# typed: strong

module Believe
  module Resources
    class Press
      # Get Ted's response to press conference questions.
      sig do
        params(
          question: String,
          hostile: T::Boolean,
          topic: T.nilable(String),
          request_options: Believe::RequestOptions::OrHash
        ).returns(Believe::Models::PressSimulateResponse)
      end
      def simulate(
        # The press question to answer
        question:,
        # Is this a hostile question from Trent Crimm?
        hostile: nil,
        # Topic category
        topic: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Believe::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
