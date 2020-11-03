require 'httparty'
require "vanilla_forums/version"
require 'vanilla_forums/exceptions'
require 'vanilla_forums/configuration'
require 'vanilla_forums/base_resource'
require 'vanilla_forums/base_criteria'
require 'vanilla_forums/models/discussion'
require 'vanilla_forums/models/comment'
require 'vanilla_forums/models/user'
require 'vanilla_forums/models/category'
require 'vanilla_forums/criterias/category_criteria'
require 'vanilla_forums/criterias/user_criteria'
require 'vanilla_forums/criterias/discussion_criteria'
require 'vanilla_forums/criterias/comment_criteria'
require 'vanilla_forums/client'

class VanillaForums

  attr_reader :configuration

  def initialize(options = {})
    @configuration = Configuration.new
  end

  def client
    @client
  end

  def config(&block)
    block.call(self.configuration)
    @client = Client.new(url, access_token, debug_mode?)
  end

  def discussions
    VanillaForums::DiscussionCriteria.new(@client)
  end

  def users
    VanillaForums::UserCriteria.new(@client)
  end

  def comments
    VanillaForums::CommentCriteria.new(@client)
  end

  def categories
    VanillaForums::CategoryCriteria.new(@client)
  end

  def debug_mode?
    self.configuration._debug == true
  end

  def url
    self.configuration._url
  end

  def access_token
    self.configuration._access_token
  end
end
