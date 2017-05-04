class ResumesController < ApplicationController
  def index
  	render 'index.html.erb'
  end

  def show

  	render 'show.html.erb'
  end

  def edit
  	render 'edit.html.erb'
  end

  def update
  	@resume = Resume.find_by(student_id: params[:student_id]) 
  	#@resume = Unirest.put().body
  	@resume.update(
      first_name: params[:first_name] || @student.first_name, 
      last_name: params[:last_name] || @student.last_name, 
      email: params[:email] || @student.email,
      phone_number: params[:phone_number] || @student.phone_number,
      short_bio: params[:short_bio] || @student.short_bio,
      linkedin_url: params[:linkedin_url] || @student.linkedin_url,
      twitter_handle: params[:twitter_handle] || @student.twitter_handle,
	  personal_web_url: params[:personal_web_url] || @student.personal_web_url,
	  online_resume_url: params[:online_resume_url] || @student.online_resume_url,
	  github_url: params[:github_url] || @student.github_url,
	  photo: params[:photo] || @student.photo
      )
  	redirect_to "/resumes/#{@user.student_id}"
  end
end

 # 	json.id student.id
 #  json.first_name student.first_name
 #  json.last_name student.last_name
 #  json.email student.email
 #  json.phone_number student.phone_number
 #  json.short_bio student.short_bio
 #  json.linkedin_url student.linkedin_url
 #  json.twitter_handle student.twitter_handle
 #  json.personal_web_url student.personal_web_url
 #  json.online_resume_url student.online_resume_url
 #  json.github_url student.github_url
 #  json.photo student.photo