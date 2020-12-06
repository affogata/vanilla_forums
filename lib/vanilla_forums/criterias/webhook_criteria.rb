class VanillaForums
    class WebhookCriteria < BaseCriteria
        api_endpoint "/webhooks"
        model VanillaForums::Webhook
    end
end