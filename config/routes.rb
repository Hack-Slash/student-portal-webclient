Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/resumes' => 'resumes#index'
  get '/updatepassword/:id' => 'resumes#show'
  get '/updatepassword/:id/edit' => 'resumes#editpassword'
  patch '/updatepassword/:id' => 'resumes#updatepassword'
end
