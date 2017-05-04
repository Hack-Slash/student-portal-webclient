class StudentsController < ApplicationController
  def index
  	@students = Unirest.get("#{ENV['API_BASE_URL']}/students").body
  end

  def show
  	@student = Student.find_by(id: params[:student_id])
  end
end
#user.student_id