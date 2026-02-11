# frozen_string_literal: true

module Believe
  module Models
    # Roles characters can have.
    module CharacterRole
      extend Believe::Internal::Type::Enum

      COACH = :coach
      PLAYER = :player
      OWNER = :owner
      MANAGER = :manager
      STAFF = :staff
      JOURNALIST = :journalist
      FAMILY = :family
      FRIEND = :friend
      FAN = :fan
      OTHER = :other

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
