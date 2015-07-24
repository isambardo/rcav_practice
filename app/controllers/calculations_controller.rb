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
    @user_number_sqrt = @user_number_sqrt.round(2)
    render("square_root.html.erb")

  end

  def random

    @lower_limit = params["lower_limit"].to_i
    @upper_limit = params["upper_limit"].to_i
    range = @upper_limit.to_i - @lower_limit.to_i
    @random = @lower_limit + rand(range)
    render("random.html.erb")

  end

  def payment
    @apr = params[:annual_percentage_rate].to_f
    @apr = @apr/100
    @years = params[:number_of_years].to_i
    @principal = params[:principal_value].to_i
    @monthlyrate = @apr/1200
    @months = @years * 12
    @monthly_payment = @principal * (@monthlyrate+(@monthlyrate/(((1+@monthlyrate)**@months)-1)))
  end

end
