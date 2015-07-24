Rails.application.routes.draw do
  get("/instructions", { :controller => "calculations", :action => "instructions" })
  get("/square/:user_number", { :controller => "calculations", :action => "square" })
  get("/square_root/:user_number", { :controller => "calculations", :action => "square_root" })
  get("/random/:lower_limit/:upper_limit", { :controller => "calculations", :action => "random" })
  get("/payment/:annual_percentage_rate/:number_of_years/:principal_value", { :controller => "calculations", :action => "payment" })
end
