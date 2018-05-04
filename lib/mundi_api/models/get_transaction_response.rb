# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module MundiApi
  # Generic response object for getting a transaction.
  class GetTransactionResponse < BaseModel
    # Gateway transaction id
    # @return [String]
    attr_accessor :gateway_id

    # Amount in cents
    # @return [Integer]
    attr_accessor :amount

    # Transaction status
    # @return [String]
    attr_accessor :status

    # Indicates if the transaction ocurred successfuly
    # @return [Boolean]
    attr_accessor :success

    # Creation date
    # @return [DateTime]
    attr_accessor :created_at

    # Last update date
    # @return [DateTime]
    attr_accessor :updated_at

    # Number of attempts tried
    # @return [Integer]
    attr_accessor :attempt_count

    # Max attempts
    # @return [Integer]
    attr_accessor :max_attempts

    # Splits
    # @return [List of GetSplitResponse]
    attr_accessor :splits

    # Código da transação
    # @return [String]
    attr_accessor :id

    # Date and time of the next attempt
    # @return [DateTime]
    attr_accessor :next_attempt

    # Date and time of the next attempt
    # @return [String]
    attr_accessor :transaction_type

    # Discriminators mapping.
    def self.discriminators
      if @_discriminators.nil?
        @_discriminators = {}
        @_discriminators['credit_card'] = GetCreditCardTransactionResponse.method(:from_hash)
        @_discriminators['voucher'] = GetVoucherTransactionResponse.method(:from_hash)
        @_discriminators['bank_transfer'] = GetBankTransferTransactionResponse.method(:from_hash)
        @_discriminators['safetypay'] = GetSafetyPayTransactionResponse.method(:from_hash)
        @_discriminators['boleto'] = GetBoletoTransactionResponse.method(:from_hash)
      end
      @_discriminators
    end

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['gateway_id'] = 'gateway_id'
      @_hash['amount'] = 'amount'
      @_hash['status'] = 'status'
      @_hash['success'] = 'success'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash['attempt_count'] = 'attempt_count'
      @_hash['max_attempts'] = 'max_attempts'
      @_hash['splits'] = 'splits'
      @_hash['id'] = 'id'
      @_hash['next_attempt'] = 'next_attempt'
      @_hash['transaction_type'] = 'transaction_type'
      @_hash
    end

    def initialize(gateway_id = nil,
                   amount = nil,
                   status = nil,
                   success = nil,
                   created_at = nil,
                   updated_at = nil,
                   attempt_count = nil,
                   max_attempts = nil,
                   splits = nil,
                   id = nil,
                   next_attempt = nil,
                   transaction_type = nil)
      @gateway_id = gateway_id
      @amount = amount
      @status = status
      @success = success
      @created_at = created_at
      @updated_at = updated_at
      @attempt_count = attempt_count
      @max_attempts = max_attempts
      @splits = splits
      @id = id
      @next_attempt = next_attempt
      @transaction_type = transaction_type
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Delegate unboxing to another function if a discriminator
      # value for a child class is present.
      unboxer = discriminators[hash['transaction_type']]
      return unboxer.call(hash) if unboxer

      # Extract variables from the hash.
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
      next_attempt = APIHelper.rfc3339(hash['next_attempt']) if
        hash['next_attempt']
      transaction_type = hash['transaction_type']

      # Create object from extracted values.
      GetTransactionResponse.new(gateway_id,
                                 amount,
                                 status,
                                 success,
                                 created_at,
                                 updated_at,
                                 attempt_count,
                                 max_attempts,
                                 splits,
                                 id,
                                 next_attempt,
                                 transaction_type)
    end
  end
end
