class VanillaForums
  class CommentCriteria < BaseCriteria
    api_endpoint "/comments"
    model VanillaForums::Comment
  end
end