Rails.application.routes.draw do
  scope '(:locale)', locale: /#{I18n.available_locales.join('|')}/ do
    root to: 'pages#index'
    get 'cv', to:'pages#cv_section'
    get 'golf', to:'golf_scores#index'
    get 'info', to:'pages#info_section'
    get 'diving', to:'dives#index'

  end
end
