class StudentsController < ApplicationController
  before_action :authenticate_user!

  def show
    @student = Unirest.get("http://localhost:3000/api/v1/students/#{current_user.student_id}").body
    @experiences = @student['experience']
    @education = @student['education']
    @capstones = @student['capstones']
    @skills = @student['skills']
    render 'show.html.erb'
  end

  def edit
    @student = Unirest.get("http://localhost:3000/api/v1/students/#{current_user.student_id}").body
    render 'edit.html.erb'
  end

  def update
    redirect_to "/resumes"
  end
end