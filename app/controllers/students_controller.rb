class StudentsController < ApplicationController
  before_action :authenticate_user!


  def show
    @student = Unirest.get("http://localhost:3000/api/v1/students/#{current_user.student_id}").body
    @experiences = @student['experience']
    @education = @student['education']
    @capstones = @student['capstones']
    @skills = @student['skills']

  end

  def edit
    @student = Unirest.get("http://localhost:3000/api/v1/students/#{current_user.student_id}").body
    render 'edit.html.erb'
  end

  def update
    student = Unirest.patch("http://localhost:3000/api/v1/students/#{current_user.student_id}",
        parameters: {
          first_name: params[:first_name],
          last_name: params[:last_name],
          email: params[:email],
          phone_number: params[:phone_number],
          short_bio: params[:short_bio],
          linkedin_url: params[:linkedin_url],
          twitter_handle: params[:twitter_handle],
          personal_web_url: params[:personal_web_url], 
          online_resume_url: params[:online_resume_url],
          github_url: params[:github_url],
          photo: params[:photo]
        }
    ).body
    redirect_to "/resumes"
  end
end