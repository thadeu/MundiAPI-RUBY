# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MundiApi
  # Response object for getting a pricing scheme
  class GetPricingSchemeResponse < BaseModel
    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :price

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :scheme_type

    # TODO: Write general description for this method
    # @return [List of GetPriceBracketResponse]
    attr_accessor :price_brackets

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :minimum_price

    # A mapping from model property names to API property names.
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash['price'] = 'price'
        @_hash['scheme_type'] = 'scheme_type'
        @_hash['price_brackets'] = 'price_brackets'
        @_hash['minimum_price'] = 'minimum_price'
      end
      @_hash
    end

    def initialize(price = nil,
                   scheme_type = nil,
                   price_brackets = nil,
                   minimum_price = nil)
      @price = price
      @scheme_type = scheme_type
      @price_brackets = price_brackets
      @minimum_price = minimum_price
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      price = hash['price']
      scheme_type = hash['scheme_type']
      # Parameter is an array, so we need to iterate through it
      price_brackets = nil
      unless hash['price_brackets'].nil?
        price_brackets = []
        hash['price_brackets'].each do |structure|
          price_brackets << (GetPriceBracketResponse.from_hash(structure) if structure)
        end
      end
      minimum_price = hash['minimum_price']

      # Create object from extracted values.
      GetPricingSchemeResponse.new(price,
                                   scheme_type,
                                   price_brackets,
                                   minimum_price)
    end
  end
end