class VanillaForums
  class BaseResource
    attr_reader :raw_data, :client

    def initialize(attrs = {})
      @raw_data = attrs
      @raw_data.each_pair do |attr, val|
        instance_variable_set("@#{attr}", val)
      end
    end

    def self.endpoint
      @endpoint
    end

    def self.api_endpoint(endpoint)
      @endpoint = endpoint
    end

    def self.all(options = {})
      response = VanillaForums.client.get(self.endpoint, query: options)
      handle_response_code(response)
      response.parsed_response.collect do |resource_attributes|
        new(resource_attributes)
      end
    end

    def self.find_by_id(id, options = {})
      response = VanillaForums.client.get(self.endpoint + "/#{id}",query: options)
      handle_response_code(response)
      new(response.parsed_response)
    end

    private

    def self.handle_response_code(response)
      if (400..503).include?(response.code)
        raise VanillaForums::Exceptions::ApiCallError.new("call to #{self.endpoint} returned a #{response.code}", response.parsed_response)
      end
    end

  end
end