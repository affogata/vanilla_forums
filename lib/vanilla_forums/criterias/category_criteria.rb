class VanillaForums
  class CategoryCriteria < BaseCriteria

    api_endpoint "/categories"
    model VanillaForums::Category
  end
end