# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

require 'date'
module MundiApi
  # SubscriptionsBillingDateRequest Model.
  class SubscriptionsBillingDateRequest < BaseModel
    # The date when the next subscription billing must occur
    # @return [DateTime]
    attr_accessor :next_billing_at

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['next_billing_at'] = 'next_billing_at'
      @_hash
    end

    def initialize(next_billing_at = nil)
      @next_billing_at = next_billing_at
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      next_billing_at = APIHelper.rfc3339(hash['next_billing_at']) if
        hash['next_billing_at']

      # Create object from extracted values.
      SubscriptionsBillingDateRequest.new(next_billing_at)
    end
  end
end