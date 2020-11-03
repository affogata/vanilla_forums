class VanillaForums
  class UserCriteria < BaseCriteria
    api_endpoint "/users"
    model VanillaForums::User
  end
end