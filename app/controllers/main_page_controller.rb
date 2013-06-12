class MainPageController < ApplicationController

  def home
  end
def new
    @user = User.new
  end
  def welcome
  end
end
