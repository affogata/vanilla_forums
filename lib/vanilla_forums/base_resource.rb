class VanillaForums
  class BaseResource
    attr_reader :raw_data

    def initialize(attrs = {})
      @raw_data = attrs
      @raw_data.each_pair do |attr, val|
        instance_variable_set("@#{attr}", val)
      end
    end
  end
end