Rails.application.routes.draw do
  scope '(:locale)', locale: /#{I18n.available_locales.join('|')}/ do
    root to: 'pages#index'
    get 'cv', to:'pages#cv_section'

    get 'golf', to:'golf_scores#index'
    get 'new_golf_score', to:'golf_scores#new'
    get 'edit_golf_score', to:'golf_scores#edit'

    get 'golf_location', to:'golf_locations#show'

    get 'diving', to:'dives#index'

    get 'info', to:'pages#info_section'

    post 'golf_scores', to: 'controller#golf_scores'

    resources :golf_locations
  end
end
