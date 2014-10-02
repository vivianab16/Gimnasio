class StaticPagesController < ApplicationController 
 
  before_filter :require_login, :except => [:home, :help, :contact, :about]