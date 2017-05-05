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
    @student = Unirest.patch("http://localhost:3000/api/v1/students").body.first
    @resume.update(
      first_name: params[:first_name] || @student['first_name'], 
      last_name: params[:last_name] || @student['last_name'], 
      email: params[:email] || @student['email'],
      phone_number: params[:phone_number] || @student['phone_number'],
      short_bio: params[:short_bio] || @student['short_bio'],
      linkedin_url: params[:linkedin_url] || @student['linkedin_url'],
      twitter_handle: params[:twitter_handle] || @student['twitter_handle'],
      personal_web_url: params[:personal_web_url] || @student['personal_web_url'],
      online_resume_url: params[:online_resume_url] || @student['online_resume_url'],
      github_url: params[:github_url] || @student['github_url'],
      photo: params[:photo] || @student['photo']
    )
    redirect_to "/resumes"
  end
end