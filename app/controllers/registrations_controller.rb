# frozen_string_literal: true

class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(_resource)
    '/an/example/path' # Or :prefix_to_your_route
  end
end
