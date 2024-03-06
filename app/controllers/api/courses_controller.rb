class Api::CoursesController < ApplicationController
  def create
    course = Course.new(course_params)

    if course.save
      render json: course, status: :created
    else
      render json: { errors: course.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def index
    courses = Course.all
    render json: courses, include: :tutors
  end

  private

  def course_params
    params.require(:course).permit(:name, tutors_attributes: [:name, :bio])
  end
end
