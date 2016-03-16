require 'teamsquare_hmac_signature/version'
require 'gibberish/hmac'

module TeamsquareHmacSignature
  class HMAC256
    def self.generate(shared_secret, username, timestamp_as_integer, key_password)
      Gibberish::HMAC256(shared_secret, "#{username}|#{timestamp_as_integer}|#{key_password}")
    end
  end
end
