Rails.application.routes.draw do
  root "boards#index"

  resources :boards, shallow: true do
    resources :board_columns, except: [ :index, :show ] do
      member do
        put :update_card_positions
      end
    end
  end

  resources :cards,  except: [ :index ]

  get "up" => "rails/health#show", as: :rails_health_check
end
