class StaticPagesController < ApplicationController
  before_action :logged_in_user, only: [:create]
  def home
  end
  
  def search
    @search = params
    render :home
  end
end
