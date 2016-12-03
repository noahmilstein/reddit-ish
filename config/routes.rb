Rails.application.routes.draw do
  # prune redundant routes and relevant methods within controllers
  # possibly redundant
  resources :comments

  devise_for :users
  resources :links do
    member do
      put "like", to: "links#upvote"
      put "dislike", to: "links#downvote"
    end
    resources :comments
  end

  root 'links#index'
end
