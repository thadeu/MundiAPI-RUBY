# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module MundiApi
  # Split
  class CancelSplitRequest < BaseModel
    # Split type
    # @return [String]
    attr_accessor :type

    # Amount
    # @return [Integer]
    attr_accessor :amount

    # Recipient id
    # @return [String]
    attr_accessor :recipient_id

    # The split options request
    # @return [CreateSplitOptionsRequest]
    attr_accessor :options

    # Rule id
    # @return [String]
    attr_accessor :split_rule_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['type'] = 'type'
      @_hash['amount'] = 'amount'
      @_hash['recipient_id'] = 'recipient_id'
      @_hash['options'] = 'options'
      @_hash['split_rule_id'] = 'split_rule_id'
      @_hash
    end

    def initialize(type = nil,
                   amount = nil,
                   recipient_id = nil,
                   options = nil,
                   split_rule_id = nil)
      @type = type
      @amount = amount
      @recipient_id = recipient_id
      @options = options
      @split_rule_id = split_rule_id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      type = hash['type']
      amount = hash['amount']
      recipient_id = hash['recipient_id']
      options = CreateSplitOptionsRequest.from_hash(hash['options']) if
        hash['options']
      split_rule_id = hash['split_rule_id']

      # Create object from extracted values.
      CancelSplitRequest.new(type,
                             amount,
                             recipient_id,
                             options,
                             split_rule_id)
    end
  end
end
