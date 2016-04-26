class AdminController < ApplicationController
  def index
    @site_info = SiteInfo.last
    @info_boxes = InfoBox.all
  end
end
