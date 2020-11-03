class VanillaForums
  class User < VanillaForums::BaseResource
    attr_reader :userId, :name, :photoUrl, :email, :roles,
                :dateInserted, :dateLastActive, :dateUpdated, :points, :emailConfirmed,
                :hidden, :bypassSpam, :banned, :rank, :rankId, :showEmail
    api_endpoint '/users'

    def inspect
      "<VanillaForums::User[#{UserId}] '#{name}'>"
    end
  end
end