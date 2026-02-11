# typed: strong

module Believe
  module Models
    class GeoLocation < Believe::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Believe::GeoLocation, Believe::Internal::AnyHash) }

      # Latitude in degrees
      sig { returns(Float) }
      attr_accessor :latitude

      # Longitude in degrees
      sig { returns(Float) }
      attr_accessor :longitude

      # Geographic coordinates for a location.
      sig do
        params(latitude: Float, longitude: Float).returns(T.attached_class)
      end
      def self.new(
        # Latitude in degrees
        latitude:,
        # Longitude in degrees
        longitude:
      )
      end

      sig { override.returns({ latitude: Float, longitude: Float }) }
      def to_hash
      end
    end
  end
end
