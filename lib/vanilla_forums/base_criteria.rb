class VanillaForums
  class BaseCriteria
    attr_reader :client

    def initialize(client)
      @client = client
    end

    def self.model_class
      @model_class
    end

    def self.model (model_class)
      @model_class = model_class
    end

    def self.endpoint
      @endpoint
    end

    def self.api_endpoint(endpoint)
      @endpoint = endpoint
    end

    def all(options = {})
      response = client.get(self.class.endpoint, query: options)
      handle_response_code(response)
      response.parsed_response.collect do |resource_attributes|
        self.class.model_class.new(resource_attributes)
      end
    end

    def create(options = {})
      response = client.post(self.class.endpoint, body: options)
      handle_response_code(response)
      self.class.model_class.new(response.parsed_response)
    end
    
    def find_by_id(id, options = {})
      response = client.get(self.class.endpoint + "/#{id}",query: options)
      handle_response_code(response)
      self.class.model_class.new(response.parsed_response)
    end

    private

    def handle_response_code(response)
      if (400..503).include?(response.code)
        raise VanillaForums::Exceptions::ApiCallError.new("call to #{self.class.endpoint} returned a #{response.code}", response.parsed_response)
      end
    end
  end
end