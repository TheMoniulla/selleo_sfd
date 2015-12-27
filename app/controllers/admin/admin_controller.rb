class Admin::AdminController < ApplicationController
  before_action :check_admin

  def check_admin
    redirect_to root_path, alert: 'You have to be logged in as admin to see this page.' unless current_user && current_user.admin?
  end
end
