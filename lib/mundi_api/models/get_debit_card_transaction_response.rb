# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
require_relative 'get_transaction_response'

module MundiApi
  # Response object for getting a debit card transaction
  class GetDebitCardTransactionResponse < GetTransactionResponse
    # Text that will appear on the debit card's statement
    # @return [String]
    attr_accessor :statement_descriptor

    # Acquirer name
    # @return [String]
    attr_accessor :acquirer_name

    # Aquirer affiliation code
    # @return [String]
    attr_accessor :acquirer_affiliation_code

    # Acquirer TID
    # @return [String]
    attr_accessor :acquirer_tid

    # Acquirer NSU
    # @return [String]
    attr_accessor :acquirer_nsu

    # Acquirer authorization code
    # @return [String]
    attr_accessor :acquirer_auth_code

    # Operation type
    # @return [String]
    attr_accessor :operation_type

    # Card data
    # @return [GetCardResponse]
    attr_accessor :card

    # Acquirer message
    # @return [String]
    attr_accessor :acquirer_message

    # Acquirer Return Code
    # @return [String]
    attr_accessor :acquirer_return_code

    # Merchant Plugin
    # @return [String]
    attr_accessor :mpi

    # Electronic Commerce Indicator (ECI)
    # @return [String]
    attr_accessor :eci

    # Authentication type
    # @return [String]
    attr_accessor :authentication_type

    # Authentication Url
    # @return [String]
    attr_accessor :authentication_url

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['statement_descriptor'] = 'statement_descriptor'
      @_hash['acquirer_name'] = 'acquirer_name'
      @_hash['acquirer_affiliation_code'] = 'acquirer_affiliation_code'
      @_hash['acquirer_tid'] = 'acquirer_tid'
      @_hash['acquirer_nsu'] = 'acquirer_nsu'
      @_hash['acquirer_auth_code'] = 'acquirer_auth_code'
      @_hash['operation_type'] = 'operation_type'
      @_hash['card'] = 'card'
      @_hash['acquirer_message'] = 'acquirer_message'
      @_hash['acquirer_return_code'] = 'acquirer_return_code'
      @_hash['mpi'] = 'mpi'
      @_hash['eci'] = 'eci'
      @_hash['authentication_type'] = 'authentication_type'
      @_hash['authentication_url'] = 'authentication_url'
      @_hash = super().merge(@_hash)
      @_hash
    end

    def initialize(statement_descriptor = nil,
                   acquirer_name = nil,
                   acquirer_affiliation_code = nil,
                   acquirer_tid = nil,
                   acquirer_nsu = nil,
                   acquirer_auth_code = nil,
                   operation_type = nil,
                   card = nil,
                   acquirer_message = nil,
                   acquirer_return_code = nil,
                   mpi = nil,
                   eci = nil,
                   authentication_type = nil,
                   authentication_url = nil,
                   gateway_id = nil,
                   amount = nil,
                   status = nil,
                   success = nil,
                   created_at = nil,
                   updated_at = nil,
                   attempt_count = nil,
                   max_attempts = nil,
                   splits = nil,
                   id = nil,
                   gateway_response = nil,
                   next_attempt = nil,
                   transaction_type = nil)
      @statement_descriptor = statement_descriptor
      @acquirer_name = acquirer_name
      @acquirer_affiliation_code = acquirer_affiliation_code
      @acquirer_tid = acquirer_tid
      @acquirer_nsu = acquirer_nsu
      @acquirer_auth_code = acquirer_auth_code
      @operation_type = operation_type
      @card = card
      @acquirer_message = acquirer_message
      @acquirer_return_code = acquirer_return_code
      @mpi = mpi
      @eci = eci
      @authentication_type = authentication_type
      @authentication_url = authentication_url

      # Call the constructor of the base class
      super(gateway_id,
            amount,
            status,
            success,
            created_at,
            updated_at,
            attempt_count,
            max_attempts,
            splits,
            id,
            gateway_response,
            next_attempt,
            transaction_type)
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      statement_descriptor = hash['statement_descriptor']
      acquirer_name = hash['acquirer_name']
      acquirer_affiliation_code = hash['acquirer_affiliation_code']
      acquirer_tid = hash['acquirer_tid']
      acquirer_nsu = hash['acquirer_nsu']
      acquirer_auth_code = hash['acquirer_auth_code']
      operation_type = hash['operation_type']
      card = GetCardResponse.from_hash(hash['card']) if hash['card']
      acquirer_message = hash['acquirer_message']
      acquirer_return_code = hash['acquirer_return_code']
      mpi = hash['mpi']
      eci = hash['eci']
      authentication_type = hash['authentication_type']
      authentication_url = hash['authentication_url']
      gateway_id = hash['gateway_id']
      amount = hash['amount']
      status = hash['status']
      success = hash['success']
      created_at = APIHelper.rfc3339(hash['created_at']) if hash['created_at']
      updated_at = APIHelper.rfc3339(hash['updated_at']) if hash['updated_at']
      attempt_count = hash['attempt_count']
      max_attempts = hash['max_attempts']
      # Parameter is an array, so we need to iterate through it
      splits = nil
      unless hash['splits'].nil?
        splits = []
        hash['splits'].each do |structure|
          splits << (GetSplitResponse.from_hash(structure) if structure)
        end
      end
      id = hash['id']
      gateway_response = GetGatewayResponseResponse.from_hash(hash['gateway_response']) if
        hash['gateway_response']
      next_attempt = APIHelper.rfc3339(hash['next_attempt']) if
        hash['next_attempt']
      transaction_type = hash['transaction_type']

      # Create object from extracted values.
      GetDebitCardTransactionResponse.new(statement_descriptor,
                                          acquirer_name,
                                          acquirer_affiliation_code,
                                          acquirer_tid,
                                          acquirer_nsu,
                                          acquirer_auth_code,
                                          operation_type,
                                          card,
                                          acquirer_message,
                                          acquirer_return_code,
                                          mpi,
                                          eci,
                                          authentication_type,
                                          authentication_url,
                                          gateway_id,
                                          amount,
                                          status,
                                          success,
                                          created_at,
                                          updated_at,
                                          attempt_count,
                                          max_attempts,
                                          splits,
                                          id,
                                          gateway_response,
                                          next_attempt,
                                          transaction_type)
    end
  end
end
