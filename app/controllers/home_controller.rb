class HomeController < ApplicationController
  def index
  end
  def resume
    @interests = Interest.all.order(:rank)
    @projects = Project.all.order(:rank)
  end
end
