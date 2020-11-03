class VanillaForums
  class DiscussionCriteria < BaseCriteria

    api_endpoint "/discussions"
    model VanillaForums::Discussion
  end
end