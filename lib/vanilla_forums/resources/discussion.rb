class VanillaForums::Discussion < VanillaForums::BaseResource

  attr_reader :body, :bookmarked, :canonicalUrl, :categoryID,
              :closed, :countComments, :countViews, :dateInserted,
              :dateUpdated, :discussionID, :insertUserID, :name,
              :pinLocation, :pinned, :score, :sink, :type, :unread, :url
  api_endpoint '/discussions'

  def comments
    @comments ||= VanillaForums::Comment.all({discussionID: discussionID})
  end

  def user
    @user ||= VanillaForums::User.find_by_id(insertUserID)
  end

  def category
    @category ||= VanillaForums::Category.find_by_id(categoryID)
  end

  def inspect
    "<VanillaForums::Discussion[#{discussionID}] '#{name}'>"
  end
end