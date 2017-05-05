class ResumesController < ApplicationController
  before_action :authenticate_user!
  def index
    @resume = Unirest.get("http://localhost:3000/api/v1/students/#{current_user.student_id}").body
  end
 
end
