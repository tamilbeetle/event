Rails.application.routes.draw do
  resources :applicants
  root 'applicants#index'
end
