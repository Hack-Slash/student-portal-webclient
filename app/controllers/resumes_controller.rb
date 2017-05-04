class ResumesController < ApplicationController
  before_action :authenticate_user!
  def index
    @resumes = Unirest.get("http://localhost:3000/api/v1/students").body
  end
end
