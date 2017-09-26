# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

require 'date'
module MundiApi
  class GetOrderResponse < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :code

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :currency

    # TODO: Write general description for this method
    # @return [List of GetOrderItemResponse]
    attr_accessor :items

    # TODO: Write general description for this method
    # @return [GetCustomerResponse]
    attr_accessor :customer

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :status

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :created_at

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :updated_at

    # TODO: Write general description for this method
    # @return [List of GetChargeResponse]
    attr_accessor :charges

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :invoice_url

    # TODO: Write general description for this method
    # @return [GetShippingResponse]
    attr_accessor :shipping

    # TODO: Write general description for this method
    # @return [Array<String, String>]
    attr_accessor :metadata

    # Checkout Payment Settings Response
    # @return [List of GetCheckoutPaymentSettingsResponse]
    attr_accessor :checkouts

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["id"] = "id"
        @_hash["code"] = "code"
        @_hash["currency"] = "currency"
        @_hash["items"] = "items"
        @_hash["customer"] = "customer"
        @_hash["status"] = "status"
        @_hash["created_at"] = "created_at"
        @_hash["updated_at"] = "updated_at"
        @_hash["charges"] = "charges"
        @_hash["invoice_url"] = "invoice_url"
        @_hash["shipping"] = "shipping"
        @_hash["metadata"] = "metadata"
        @_hash["checkouts"] = "checkouts"
      end
      @_hash
    end

    def initialize(id = nil,
                   code = nil,
                   currency = nil,
                   items = nil,
                   customer = nil,
                   status = nil,
                   created_at = nil,
                   updated_at = nil,
                   charges = nil,
                   invoice_url = nil,
                   shipping = nil,
                   metadata = nil,
                   checkouts = nil)
      @id = id
      @code = code
      @currency = currency
      @items = items
      @customer = customer
      @status = status
      @created_at = created_at
      @updated_at = updated_at
      @charges = charges
      @invoice_url = invoice_url
      @shipping = shipping
      @metadata = metadata
      @checkouts = checkouts
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      id = hash['id']
      code = hash['code']
      currency = hash['currency']
      # Parameter is an array, so we need to iterate through it
      items = nil
      if hash['items'] != nil
        items = Array.new
        hash['items'].each{|structure| items << (GetOrderItemResponse.from_hash(structure) if structure)}
      end
      customer = GetCustomerResponse.from_hash(hash['customer']) if hash['customer']
      status = hash['status']
      created_at = DateTime.rfc3339(hash['created_at']) if hash['created_at']
      updated_at = DateTime.rfc3339(hash['updated_at']) if hash['updated_at']
      # Parameter is an array, so we need to iterate through it
      charges = nil
      if hash['charges'] != nil
        charges = Array.new
        hash['charges'].each{|structure| charges << (GetChargeResponse.from_hash(structure) if structure)}
      end
      invoice_url = hash['invoice_url']
      shipping = GetShippingResponse.from_hash(hash['shipping']) if hash['shipping']
      metadata = hash['metadata']
      # Parameter is an array, so we need to iterate through it
      checkouts = nil
      if hash['checkouts'] != nil
        checkouts = Array.new
        hash['checkouts'].each{|structure| checkouts << (GetCheckoutPaymentSettingsResponse.from_hash(structure) if structure)}
      end

      # Create object from extracted values
      GetOrderResponse.new(id,
                           code,
                           currency,
                           items,
                           customer,
                           status,
                           created_at,
                           updated_at,
                           charges,
                           invoice_url,
                           shipping,
                           metadata,
                           checkouts)
    end
  end
end
