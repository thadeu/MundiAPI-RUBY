# mundi_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module MundiApi
  # Response object for getting a plan
  class GetPlanResponse < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :description

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :url

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :statement_descriptor

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :interval

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :interval_count

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :billing_type

    # TODO: Write general description for this method
    # @return [List of String]
    attr_accessor :payment_methods

    # TODO: Write general description for this method
    # @return [List of Integer]
    attr_accessor :installments

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :status

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :currency

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :created_at

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :updated_at

    # TODO: Write general description for this method
    # @return [List of GetPlanItemResponse]
    attr_accessor :items

    # TODO: Write general description for this method
    # @return [List of Integer]
    attr_accessor :billing_days

    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :shippable

    # TODO: Write general description for this method
    # @return [Array<String, String>]
    attr_accessor :metadata

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :trial_period_days

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :minimum_price

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :deleted_at

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['name'] = 'name'
      @_hash['description'] = 'description'
      @_hash['url'] = 'url'
      @_hash['statement_descriptor'] = 'statement_descriptor'
      @_hash['interval'] = 'interval'
      @_hash['interval_count'] = 'interval_count'
      @_hash['billing_type'] = 'billing_type'
      @_hash['payment_methods'] = 'payment_methods'
      @_hash['installments'] = 'installments'
      @_hash['status'] = 'status'
      @_hash['currency'] = 'currency'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash['items'] = 'items'
      @_hash['billing_days'] = 'billing_days'
      @_hash['shippable'] = 'shippable'
      @_hash['metadata'] = 'metadata'
      @_hash['trial_period_days'] = 'trial_period_days'
      @_hash['minimum_price'] = 'minimum_price'
      @_hash['deleted_at'] = 'deleted_at'
      @_hash
    end

    def initialize(id = nil,
                   name = nil,
                   description = nil,
                   url = nil,
                   statement_descriptor = nil,
                   interval = nil,
                   interval_count = nil,
                   billing_type = nil,
                   payment_methods = nil,
                   installments = nil,
                   status = nil,
                   currency = nil,
                   created_at = nil,
                   updated_at = nil,
                   items = nil,
                   billing_days = nil,
                   shippable = nil,
                   metadata = nil,
                   trial_period_days = nil,
                   minimum_price = nil,
                   deleted_at = nil)
      @id = id
      @name = name
      @description = description
      @url = url
      @statement_descriptor = statement_descriptor
      @interval = interval
      @interval_count = interval_count
      @billing_type = billing_type
      @payment_methods = payment_methods
      @installments = installments
      @status = status
      @currency = currency
      @created_at = created_at
      @updated_at = updated_at
      @items = items
      @billing_days = billing_days
      @shippable = shippable
      @metadata = metadata
      @trial_period_days = trial_period_days
      @minimum_price = minimum_price
      @deleted_at = deleted_at
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash['id']
      name = hash['name']
      description = hash['description']
      url = hash['url']
      statement_descriptor = hash['statement_descriptor']
      interval = hash['interval']
      interval_count = hash['interval_count']
      billing_type = hash['billing_type']
      payment_methods = hash['payment_methods']
      installments = hash['installments']
      status = hash['status']
      currency = hash['currency']
      created_at = APIHelper.rfc3339(hash['created_at']) if hash['created_at']
      updated_at = APIHelper.rfc3339(hash['updated_at']) if hash['updated_at']
      # Parameter is an array, so we need to iterate through it
      items = nil
      unless hash['items'].nil?
        items = []
        hash['items'].each do |structure|
          items << (GetPlanItemResponse.from_hash(structure) if structure)
        end
      end
      billing_days = hash['billing_days']
      shippable = hash['shippable']
      metadata = hash['metadata']
      trial_period_days = hash['trial_period_days']
      minimum_price = hash['minimum_price']
      deleted_at = APIHelper.rfc3339(hash['deleted_at']) if hash['deleted_at']

      # Create object from extracted values.
      GetPlanResponse.new(id,
                          name,
                          description,
                          url,
                          statement_descriptor,
                          interval,
                          interval_count,
                          billing_type,
                          payment_methods,
                          installments,
                          status,
                          currency,
                          created_at,
                          updated_at,
                          items,
                          billing_days,
                          shippable,
                          metadata,
                          trial_period_days,
                          minimum_price,
                          deleted_at)
    end
  end
end
