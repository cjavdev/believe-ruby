# typed: strong

module Believe
  module Resources
    # Interactive endpoints for motivation and guidance
    class Conflicts
      # Get Ted Lasso-style advice for resolving conflicts.
      sig do
        params(
          conflict_type:
            ::Believe::ConflictResolveParams::ConflictType::OrSymbol,
          description: String,
          parties_involved: T::Array[String],
          attempts_made: T.nilable(T::Array[String]),
          request_options: ::Believe::RequestOptions::OrHash
        ).returns(::Believe::Models::ConflictResolveResponse)
      end
      def resolve(
        # Type of conflict
        conflict_type:,
        # Describe the conflict
        description:,
        # Who is involved in the conflict
        parties_involved:,
        # What you've already tried
        attempts_made: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: ::Believe::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
