class HobbiesController < ApplicationController
  def index
    @hobbies = Hobby.all.order(:rank)
  end
end
