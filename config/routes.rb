Rails.application.routes.draw do
    root 'articles#index'
    resources :articles
    get 'search' => 'search#search'

end
