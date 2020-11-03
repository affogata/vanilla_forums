class VanillaForums
  module Exceptions
    class ApiCallError < StandardError
      attr_reader :response_body

      def initialize(msg = nil, response_body = {})
        @response_body = response_body
        super(msg)
      end
    end
  end
end