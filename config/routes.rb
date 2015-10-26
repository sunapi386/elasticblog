Rails.application.routes.draw do
    root 'articles#index'
    resources :articles
    get 'search' => 'search#search'

    scope '/session' do
        get '/' => 'api#session_get'
        post '/' => 'api#session_post'
    end
    scope '/suggestions' do
        post '/' => 'api#suggestions#post'
    end
end
