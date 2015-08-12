class PagesController < ApplicationController
  def index
    right_now = Time.now
   @current_time = right_now.stamp("12:00 pm")
   @current_date = right_now.stamp("February 1, 1999")
  end

  def about
  end
end
