# mundi_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MundiApi
  # Request for creating a new Access Token
  class CreateAccessTokenRequest < BaseModel
    # Minutes to expire the token
    # @return [Integer]
    attr_accessor :expires_in

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['expires_in'] = 'expires_in'
      @_hash
    end

    def initialize(expires_in = nil)
      @expires_in = expires_in
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      expires_in = hash['expires_in']

      # Create object from extracted values.
      CreateAccessTokenRequest.new(expires_in)
    end
  end
end
