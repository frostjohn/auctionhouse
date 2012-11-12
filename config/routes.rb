BoilerPlate::Application.routes.draw do

  resources :items do
		resources :item_bids, :only => [:create, :destroy, :update]
	end # items

  root :to => 'home#index'

  match 'users/index' => 'users#index', :as => 'users_index'
  devise_for :users

  ActiveAdmin.routes(self) rescue nil
  devise_for :admin_users, ActiveAdmin::Devise.config

end
