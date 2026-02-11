# frozen_string_literal: true

module Believe
  module Models
    # @type [Believe::Internal::Type::Converter]
    TeamListLogosResponse = Believe::Internal::Type::ArrayOf[-> { Believe::Teams::FileUpload }]
  end
end
