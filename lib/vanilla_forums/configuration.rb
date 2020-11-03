class VanillaForums
  class Configuration
    attr_reader :_access_token, :_url, :_debug

    def debug_mode(val)
      @_debug = val
    end
    def url(new_url)
      @_url = new_url
    end

    def access_token(new_access_token)
      @_access_token = new_access_token
    end
  end
end