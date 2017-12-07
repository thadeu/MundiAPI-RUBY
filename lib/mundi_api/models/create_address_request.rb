# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MundiApi
  # Request for creating a new Address
  class CreateAddressRequest < BaseModel
    # Street
    # @return [String]
    attr_accessor :street

    # Number
    # @return [String]
    attr_accessor :number

    # The zip code containing only numbers. No special characters or spaces.
    # @return [String]
    attr_accessor :zip_code

    # Neighborhood
    # @return [String]
    attr_accessor :neighborhood

    # City
    # @return [String]
    attr_accessor :city

    # State
    # @return [String]
    attr_accessor :state

    # Country. Must be entered using ISO 3166-1 alpha-2 format. See
    # https://pt.wikipedia.org/wiki/ISO_3166-1_alfa-2
    # @return [String]
    attr_accessor :country

    # Complement
    # @return [String]
    attr_accessor :complement

    # Metadata
    # @return [Array<String, String>]
    attr_accessor :metadata

    # Line 1 for address
    # @return [String]
    attr_accessor :line_1

    # Line 2 for address
    # @return [String]
    attr_accessor :line_2

    # A mapping from model property names to API property names.
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash['street'] = 'street'
        @_hash['number'] = 'number'
        @_hash['zip_code'] = 'zip_code'
        @_hash['neighborhood'] = 'neighborhood'
        @_hash['city'] = 'city'
        @_hash['state'] = 'state'
        @_hash['country'] = 'country'
        @_hash['complement'] = 'complement'
        @_hash['metadata'] = 'metadata'
        @_hash['line_1'] = 'line_1'
        @_hash['line_2'] = 'line_2'
      end
      @_hash
    end

    def initialize(street = nil,
                   number = nil,
                   zip_code = nil,
                   neighborhood = nil,
                   city = nil,
                   state = nil,
                   country = nil,
                   complement = nil,
                   metadata = nil,
                   line_1 = nil,
                   line_2 = nil)
      @street = street
      @number = number
      @zip_code = zip_code
      @neighborhood = neighborhood
      @city = city
      @state = state
      @country = country
      @complement = complement
      @metadata = metadata
      @line_1 = line_1
      @line_2 = line_2
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      street = hash['street']
      number = hash['number']
      zip_code = hash['zip_code']
      neighborhood = hash['neighborhood']
      city = hash['city']
      state = hash['state']
      country = hash['country']
      complement = hash['complement']
      metadata = hash['metadata']
      line_1 = hash['line_1']
      line_2 = hash['line_2']

      # Create object from extracted values.
      CreateAddressRequest.new(street,
                               number,
                               zip_code,
                               neighborhood,
                               city,
                               state,
                               country,
                               complement,
                               metadata,
                               line_1,
                               line_2)
    end
  end
end
