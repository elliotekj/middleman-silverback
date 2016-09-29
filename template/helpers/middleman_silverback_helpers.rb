require 'ostruct'

module MiddlemanSilverbackHelpers
  def blog_settings
    OpenStruct.new(config.silverback[:blog])
  end
end
