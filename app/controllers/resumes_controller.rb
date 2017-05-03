class ResumesController < ApplicationController
  def index
    @resumes = Unirest.get("http://localhost:3000/api/v1/students").body
    p @resumes
  end

  def show
  end

  def editpassword
    @student = User.find_by(student_id: params[:id])
    render 'updatepassword.html.erb'
  end

  def updatepassword
    @student = User.find_by(student_id: params[:id])
    @student.update(
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
  end
end
