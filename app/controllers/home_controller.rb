class HomeController < ApplicationController
  def index
  end
  def resume
    @interests = Interest.all.order(:rank)
    @projects = Project.all.order(:rank)
    @education = Education.all
    @work = Work.all
  end
end
