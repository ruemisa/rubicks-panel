Rails.application.routes.draw do
  # GOD MODE
  resources :admins
  
  # User Authentication with devise. Customized default paths
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'enroll' }
  
  # Courses, Cohorts, Instructors, Students
  resources :courses, except: [:show] do
    resources :cohorts, only: [:index, :new, :create, :destroy] do
      resources :students, only:[:index, :new, :create, :destroy] 
      resources :instructors, only: [:index, :new, :create, :destroy]
    end
  end
  get 'courses/:id' => 'courses#show', as: 'course_show'
  
  # Cohorts only 
  resources :cohorts, only: [:show, :edit, :update], except: [:show]
  get 'cohorts/:id' => 'cohorts#show', as: 'cohort_show'

  # Instructors only
  resources :instructors, only: [:show, :edit, :update]

  # Students only
  resources :students, only: [:show, :edit, :update]

  # Other MAIN pages
  get 'about-us' => 'pages#about'
  get 'contact-us' => 'pages#contact'

  # HOME
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
