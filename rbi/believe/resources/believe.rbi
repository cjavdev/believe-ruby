# typed: strong

module Believe
  module Resources
    class Believe
      # Submit your situation and receive Ted Lasso-style motivational guidance.
      sig do
        params(
          situation: String,
          situation_type: Believe::BelieveSubmitParams::SituationType::OrSymbol,
          context: T.nilable(String),
          intensity: Integer,
          request_options: Believe::RequestOptions::OrHash
        ).returns(Believe::Models::BelieveSubmitResponse)
      end
      def submit(
        # Describe your situation
        situation:,
        # Type of situation
        situation_type:,
        # Additional context
        context: nil,
        # How intense is the response needed (1=gentle, 10=full Ted)
        intensity: nil,
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
