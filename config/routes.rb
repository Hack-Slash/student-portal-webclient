Rails.application.routes.draw do
  get 'students/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/resumes' => 'resumes#index'
  get '/resumes/:id' => 'resumes#show'
  get 'resumes/:id/edit' => 'resumes#edit'
  put 'resumes/:id' => 'resumes#update'
end
