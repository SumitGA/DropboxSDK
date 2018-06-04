require 'dropbox'

class InitializeDropboxClient
  # Initializes dropbox api with given access_token
  def initialize(access_token)
    @dbx = Dropbox::Client.new(access_token)
  end
end
