class VanillaForums
  class Client
    attr_reader :base_uri, :access_token, :debug_mode

    def initialize(base_uri, access_token, debug_mode)
      @base_uri = base_uri
      @access_token = access_token
      @debug_mode = debug_mode
    end

    def post(uri, body = {})
      HTTParty.post("#{base_uri}#{uri}", body: body,
                    headers: {
                        "Authentication" => "Bearer #{access_token}",
                        "Content-Type" => 'application/json'
                    },
                    debug_output: debug_mode == true ? $stdout : $stderr)
    end

    def get(uri, query = {})
      HTTParty.get("#{base_uri}#{uri}", query: query,
                   headers: {
                       "Authentication" => "Bearer #{access_token}",
                       "Content-Type" => 'application/json'
                   },
                   debug_output: debug_mode == true ? $stdout : $stderr)
    end
  end
end