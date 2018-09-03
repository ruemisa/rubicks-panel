Rails.application.routes.draw do
  
  resources :cohorts, except: [:show]
  get 'cohort/:id' => 'cohorts#show', as: 'cohort_show'

  resources :courses, except: [:show]
  get 'course/:id' => 'courses#show', as: 'course_show'
  
  # Other MAIN pages
  get 'about-us' => 'pages#about'
  get 'contact-us' => 'pages#contact'

  # HOME
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
