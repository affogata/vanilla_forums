require 'httparty'
require "vanilla_forums/version"
require 'vanilla_forums/exceptions'
require 'vanilla_forums/configuration'
require 'vanilla_forums/base_resource'
require 'vanilla_forums/resources/discussion'
require 'vanilla_forums/resources/comment'
require 'vanilla_forums/resources/user'
require 'vanilla_forums/resources/category'
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
    VanillaForums::Discussion
  end

  def users
    VanillaForums::User
  end

  def comments
    VanillaForums::Comment
  end

  def category
    VanillaForums::Category
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
