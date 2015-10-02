Rails.application.routes.draw do
    resources :articles
    get 'search' => 'search#search'

end
