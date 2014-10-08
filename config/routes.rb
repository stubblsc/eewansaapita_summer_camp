Eewansaapita::Application.routes.draw do
  get 'essays/view_all_owned/:user_id', to: 'essays#view_all_owned', as: :view_all_owned_essays
  get 'essays/view_by_year/:year', to: 'essays#view_by_year', as: :view_by_year_essays

  resources :essays

  get 'yearly_infos/view_all_owned/:user_id', to: 'yearly_infos#view_all_owned', as: :view_all_owned_yearly_infos
  get 'yearly_infos/view_by_year/:year', to: 'yearly_infos#view_by_year', as: :view_by_year_yearly_infos
  get 'yearly_infos/view_by_role/:role', to: 'yearly_infos#view_by_role', as: :view_by_role_yearly_infos

  resources :yearly_infos

  resources :profiles

  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
