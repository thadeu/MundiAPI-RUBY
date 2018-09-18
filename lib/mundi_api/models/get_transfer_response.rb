# mundi_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module MundiApi
  # Transfer response
  class GetTransferResponse < BaseModel
    # Id
    # @return [String]
    attr_accessor :id

    # Transfer amount
    # @return [Integer]
    attr_accessor :amount

    # Transfer status
    # @return [String]
    attr_accessor :status

    # Transfer creation date
    # @return [DateTime]
    attr_accessor :created_at

    # Transfer last update date
    # @return [DateTime]
    attr_accessor :updated_at

    # Bank account
    # @return [GetBankAccountResponse]
    attr_accessor :bank_account

    # Metadata
    # @return [Array<String, String>]
    attr_accessor :metadata

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['amount'] = 'amount'
      @_hash['status'] = 'status'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash['bank_account'] = 'bank_account'
      @_hash['metadata'] = 'metadata'
      @_hash
    end

    def initialize(id = nil,
                   amount = nil,
                   status = nil,
                   created_at = nil,
                   updated_at = nil,
                   bank_account = nil,
                   metadata = nil)
      @id = id
      @amount = amount
      @status = status
      @created_at = created_at
      @updated_at = updated_at
      @bank_account = bank_account
      @metadata = metadata
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash['id']
      amount = hash['amount']
      status = hash['status']
      created_at = APIHelper.rfc3339(hash['created_at']) if hash['created_at']
      updated_at = APIHelper.rfc3339(hash['updated_at']) if hash['updated_at']
      bank_account = GetBankAccountResponse.from_hash(hash['bank_account']) if
        hash['bank_account']
      metadata = hash['metadata']

      # Create object from extracted values.
      GetTransferResponse.new(id,
                              amount,
                              status,
                              created_at,
                              updated_at,
                              bank_account,
                              metadata)
    end
  end
end
