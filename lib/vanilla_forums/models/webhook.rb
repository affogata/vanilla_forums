class VanillaForums
    class Webhook < BaseResource
        attr_reader :webhookID, :status, :name,
                :events, :url, :secret,
                :dateInserted, :dateUpdated

        def id
            self.webhookID
        end

        def inspect
            "<VanillaForums::Webhook[#{id}] '#{name}':#{status}>"
        end
    end
end