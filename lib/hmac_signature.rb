require 'hmac_signature/version'
require 'gibberish/hmac'

module HmacSignature
  class HMAC256
    def self.generate(shared_secret, username, timestamp_as_integer, key_password)
      Gibberish::HMAC256(shared_secret, "#{username}|#{timestamp_as_integer}|#{key_password}")
    end
  end
end
