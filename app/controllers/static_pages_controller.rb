class StaticPagesController < ApplicationController
  before_filter :require_login, :except => [:home, :about]
  def home
  end

  def help
  end

  def about
  end
end