class VanillaForums
  class Category < BaseResource
    attr_reader :categoryID, :countAllComments, :countAllDiscussions,
                :countCategories, :countComments, :countDiscussions,
                :customPermissions, :description, :displayAs, :followed,
                :isArchived, :name, :parentCategoryID, :url, :urlcode

    def inspect
      "<VanillaForums::Category[#{categoryId}] '#{name}'>"
    end
  end
end