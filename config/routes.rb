Rails.application.routes.draw do
  
  # Other MAIN pages
  get 'about-us' => 'pages#about'
  get 'contact-us' => 'pages#contact'

  # HOME
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
