class HomeController < ApplicationController
  def index
    @site_info = SiteInfo.last
    @info_boxes = InfoBox.where(active: true).first(3)
  end
end
