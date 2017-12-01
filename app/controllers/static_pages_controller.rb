class StaticPagesController < ApplicationController
  def faq
  end

  def pricing
  end

  def settings
  end

  def manage_users
    @users = User.all
  end

end
