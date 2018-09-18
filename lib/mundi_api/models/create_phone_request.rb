# mundi_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MundiApi
  # CreatePhoneRequest Model.
  class CreatePhoneRequest < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :country_code

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :number

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :area_code

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['country_code'] = 'country_code'
      @_hash['number'] = 'number'
      @_hash['area_code'] = 'area_code'
      @_hash
    end

    def initialize(country_code = nil,
                   number = nil,
                   area_code = nil)
      @country_code = country_code
      @number = number
      @area_code = area_code
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      country_code = hash['country_code']
      number = hash['number']
      area_code = hash['area_code']

      # Create object from extracted values.
      CreatePhoneRequest.new(country_code,
                             number,
                             area_code)
    end
  end
end
