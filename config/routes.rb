Rails.application.routes.draw do
  root "boards#index"

  resources :boards, shallow: true do
    resources :board_columns, except: [ :index, :show ]
  end

  get "up" => "rails/health#show", as: :rails_health_check
end
