Rails.application.routes.draw do
  # Define RESTful routes for Customers
  root "customers#index"
  get "customers/alphabetized", to: "customers#alphabetized"
  get "customers/missing_email", to: "customers#missing_email"

  # ActiveAdmin authentication & routes
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # Health check for monitoring
  get "up" => "rails/health#show", as: :rails_health_check

  # Progressive Web App (PWA) routes
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end
