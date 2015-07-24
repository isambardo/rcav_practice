class CalculationsController < ApplicationController

  def instructions

    render("instructions.html.erb")

  end

  def square

    @user_number = params["user_number"]
    @user_number = @user_number.to_i
    @user_number_squared = @user_number * @user_number
    render("square.html.erb")

  end

end
