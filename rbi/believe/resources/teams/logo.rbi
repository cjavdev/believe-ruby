# typed: strong

module Believe
  module Resources
    class Teams
      # Operations related to football teams
      class Logo
        # Delete a team's logo.
        sig do
          params(
            file_id: String,
            team_id: String,
            request_options: Believe::RequestOptions::OrHash
          ).void
        end
        def delete(file_id, team_id:, request_options: {})
        end

        # Download a team's logo by file ID.
        sig do
          params(
            file_id: String,
            team_id: String,
            request_options: Believe::RequestOptions::OrHash
          ).returns(T.anything)
        end
        def download(file_id, team_id:, request_options: {})
        end

        # Upload a logo image for a team. Accepts image files (jpg, png, gif, webp).
        sig do
          params(
            team_id: String,
            file: Believe::Internal::FileInput,
            request_options: Believe::RequestOptions::OrHash
          ).returns(Believe::Teams::FileUpload)
        end
        def upload(
          team_id,
          # Logo image file
          file:,
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
end
