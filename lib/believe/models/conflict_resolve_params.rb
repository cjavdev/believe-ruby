# frozen_string_literal: true

module Believe
  module Models
    # @see Believe::Resources::Conflicts#resolve
    class ConflictResolveParams < Believe::Internal::Type::BaseModel
      extend Believe::Internal::Type::RequestParameters::Converter
      include Believe::Internal::Type::RequestParameters

      # @!attribute conflict_type
      #   Type of conflict
      #
      #   @return [Symbol, Believe::Models::ConflictResolveParams::ConflictType]
      required :conflict_type, enum: -> { Believe::ConflictResolveParams::ConflictType }

      # @!attribute description
      #   Describe the conflict
      #
      #   @return [String]
      required :description, String

      # @!attribute parties_involved
      #   Who is involved in the conflict
      #
      #   @return [Array<String>]
      required :parties_involved, Believe::Internal::Type::ArrayOf[String]

      # @!attribute attempts_made
      #   What you've already tried
      #
      #   @return [Array<String>, nil]
      optional :attempts_made, Believe::Internal::Type::ArrayOf[String], nil?: true

      # @!method initialize(conflict_type:, description:, parties_involved:, attempts_made: nil, request_options: {})
      #   @param conflict_type [Symbol, Believe::Models::ConflictResolveParams::ConflictType] Type of conflict
      #
      #   @param description [String] Describe the conflict
      #
      #   @param parties_involved [Array<String>] Who is involved in the conflict
      #
      #   @param attempts_made [Array<String>, nil] What you've already tried
      #
      #   @param request_options [Believe::RequestOptions, Hash{Symbol=>Object}]

      # Type of conflict
      module ConflictType
        extend Believe::Internal::Type::Enum

        INTERPERSONAL = :interpersonal
        TEAM_DYNAMICS = :team_dynamics
        LEADERSHIP = :leadership
        EGO = :ego
        MISCOMMUNICATION = :miscommunication
        COMPETITION = :competition

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
