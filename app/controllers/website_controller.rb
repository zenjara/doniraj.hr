class WebsiteController < ApplicationController
  def about
    @organization = Organization.new
  end

  def privacy_policy
    @organization = Organization.new
  end
end
