# frozen_string_literal: true

module DeviseWhitelistConcern
  extend ActiveSupport::Concern

  included do
    before_action :devise_permitted_params, if: :devise_controller?
  end

  def devise_permitted_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
