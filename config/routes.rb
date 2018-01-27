Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :activities, except: :destroy
    resources :categories, except: :destroy
    resources :clients, except: :destroy
    resources :projects, except: :destroy
    resources :time_entries, except: :destroy
  end
end
