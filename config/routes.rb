Rails.application.routes.draw do
  resources :task_lists
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "start#page"
end
