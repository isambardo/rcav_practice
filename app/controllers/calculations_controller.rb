class CalculationsController < ApplicationController

  def instructions

    render("instructions.html.erb")

  end

  def square

    @user_number = params["user_number"]
    @user_number = @user_number.to_f
    @user_number_squared = @user_number * @user_number
    render("square.html.erb")

  end

  def square_root

    @user_number = params["user_number"]
    @user_number = @user_number.to_f
    @user_number_sqrt = @user_number ** 0.5
    render("square_root.html.erb")

  end

end
