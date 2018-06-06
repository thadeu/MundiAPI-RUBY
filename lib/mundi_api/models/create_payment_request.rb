# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MundiApi
  # Payment data
  class CreatePaymentRequest < BaseModel
    # Payment method
    # @return [String]
    attr_accessor :payment_method

    # Settings for credit card payment
    # @return [CreateCreditCardPaymentRequest]
    attr_accessor :credit_card

    # Settings for debit card payment
    # @return [CreateDebitCardPaymentRequest]
    attr_accessor :debit_card

    # Settings for boleto payment
    # @return [CreateBoletoPaymentRequest]
    attr_accessor :boleto

    # Currency. Must be informed using 3 characters
    # @return [String]
    attr_accessor :currency

    # Settings for voucher payment
    # @return [CreateVoucherPaymentRequest]
    attr_accessor :voucher

    # Splits
    # @return [List of CreateSplitRequest]
    attr_accessor :split

    # Settings for bank transfer payment
    # @return [CreateBankTransferPaymentRequest]
    attr_accessor :bank_transfer

    # Gateway affiliation code
    # @return [String]
    attr_accessor :gateway_affiliation_id

    # The amount of the payment, in cents
    # @return [Integer]
    attr_accessor :amount

    # Settings for checkout payment
    # @return [CreateCheckoutPaymentRequest]
    attr_accessor :checkout

    # Customer Id
    # @return [String]
    attr_accessor :customer_id

    # Customer
    # @return [CreateCustomerRequest]
    attr_accessor :customer

    # Metadata
    # @return [Array<String, String>]
    attr_accessor :metadata

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['payment_method'] = 'payment_method'
      @_hash['credit_card'] = 'credit_card'
      @_hash['debit_card'] = 'debit_card'
      @_hash['boleto'] = 'boleto'
      @_hash['currency'] = 'currency'
      @_hash['voucher'] = 'voucher'
      @_hash['split'] = 'split'
      @_hash['bank_transfer'] = 'bank_transfer'
      @_hash['gateway_affiliation_id'] = 'gateway_affiliation_id'
      @_hash['amount'] = 'amount'
      @_hash['checkout'] = 'checkout'
      @_hash['customer_id'] = 'customer_id'
      @_hash['customer'] = 'customer'
      @_hash['metadata'] = 'metadata'
      @_hash
    end

    def initialize(payment_method = nil,
                   credit_card = nil,
                   debit_card = nil,
                   boleto = nil,
                   currency = nil,
                   voucher = nil,
                   split = nil,
                   bank_transfer = nil,
                   gateway_affiliation_id = nil,
                   amount = nil,
                   checkout = nil,
                   customer_id = nil,
                   customer = nil,
                   metadata = nil)
      @payment_method = payment_method
      @credit_card = credit_card
      @debit_card = debit_card
      @boleto = boleto
      @currency = currency
      @voucher = voucher
      @split = split
      @bank_transfer = bank_transfer
      @gateway_affiliation_id = gateway_affiliation_id
      @amount = amount
      @checkout = checkout
      @customer_id = customer_id
      @customer = customer
      @metadata = metadata
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      payment_method = hash['payment_method']
      credit_card = CreateCreditCardPaymentRequest.from_hash(hash['credit_card']) if
        hash['credit_card']
      debit_card = CreateDebitCardPaymentRequest.from_hash(hash['debit_card']) if
        hash['debit_card']
      boleto = CreateBoletoPaymentRequest.from_hash(hash['boleto']) if
        hash['boleto']
      currency = hash['currency']
      voucher = CreateVoucherPaymentRequest.from_hash(hash['voucher']) if
        hash['voucher']
      # Parameter is an array, so we need to iterate through it
      split = nil
      unless hash['split'].nil?
        split = []
        hash['split'].each do |structure|
          split << (CreateSplitRequest.from_hash(structure) if structure)
        end
      end
      bank_transfer = CreateBankTransferPaymentRequest.from_hash(hash['bank_transfer']) if
        hash['bank_transfer']
      gateway_affiliation_id = hash['gateway_affiliation_id']
      amount = hash['amount']
      checkout = CreateCheckoutPaymentRequest.from_hash(hash['checkout']) if
        hash['checkout']
      customer_id = hash['customer_id']
      customer = CreateCustomerRequest.from_hash(hash['customer']) if
        hash['customer']
      metadata = hash['metadata']

      # Create object from extracted values.
      CreatePaymentRequest.new(payment_method,
                               credit_card,
                               debit_card,
                               boleto,
                               currency,
                               voucher,
                               split,
                               bank_transfer,
                               gateway_affiliation_id,
                               amount,
                               checkout,
                               customer_id,
                               customer,
                               metadata)
    end
  end
end
