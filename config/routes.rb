Rails.application.routes.draw do
  match '*any' => 'application#options', :via => [:options]
  resources :lists do
    resources :tasks do
    end
  end
end
