class LessonsController < ApplicationController
  before_action :authenticate_user!
  before_action :require_authorized_for_current_lesson, only: [:show]
  
  def show
  end

  private


def create
  require_authorized_for_current_lesson.section.course
    if current_lesson.user != current_user
      redirect_to courses_path(@courses), alert: "Quit clowning around - enroll today!"
    end
end

  helper_method :current_lesson
  def current_lesson
    @current_lesson ||= Lesson.find(params[:id])
  end 


end
