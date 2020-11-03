class VanillaForums
  class Comment < VanillaForums::BaseResource
    attr_reader :body, :commentID, :dateInserted,
                :dateUpdated, :discussionID,
                :insertUserID, :score, :url

    api_endpoint '/comments'

    def user
      @user ||= VanillaForums::User.find_by_id(insertUserID)
    end

    def inspect
      "<VanillaForums::Discussion[#{commentID}] '#{url}'>"
    end
  end
end