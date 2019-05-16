class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @courses = Course.find(params[:id, :image])
  end

end

