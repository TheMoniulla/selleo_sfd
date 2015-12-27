class Admin::UsersController < Admin::AdminController
  def index
    @users = User.all.order(:email)
  end
end
