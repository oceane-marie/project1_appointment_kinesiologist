class PagesController < ApplicationController
  before_action :authenticate_user!, only: :home, raise: false

  def home
  end

  def about
  end
end
