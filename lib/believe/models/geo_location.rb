# frozen_string_literal: true

module Believe
  module Models
    class GeoLocation < Believe::Internal::Type::BaseModel
      # @!attribute latitude
      #   Latitude in degrees
      #
      #   @return [Float]
      required :latitude, Float

      # @!attribute longitude
      #   Longitude in degrees
      #
      #   @return [Float]
      required :longitude, Float

      # @!method initialize(latitude:, longitude:)
      #   Geographic coordinates for a location.
      #
      #   @param latitude [Float] Latitude in degrees
      #
      #   @param longitude [Float] Longitude in degrees
    end
  end
end
