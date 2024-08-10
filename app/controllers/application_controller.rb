class ApplicationController < ActionController::Base
  before_action :set_devise_variables

  def after_sign_in_path_for(resource)
    products_path # Redireciona para a página inicial dos produtos após o login
  end

  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path # Redireciona para a página de login após o logout
  end

  private

  def set_devise_variables
    @resource = User.new
    @resource_name = :user
  end
end
