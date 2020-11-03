class VanillaForums::Discussion < VanillaForums::BaseResource

  attr_reader :body, :bookmarked, :canonicalUrl, :categoryID,
              :closed, :countComments, :countViews, :dateInserted,
              :dateUpdated, :discussionID, :insertUserID, :name,
              :pinLocation, :pinned, :score, :sink, :type, :unread, :url

  def inspect
    "<VanillaForums::Discussion[#{discussionID}] '#{name}'>"
  end
end