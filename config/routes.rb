Rails.application.routes.draw do
  get("/instructions", { :controller => "calculations", :action => "instructions" })
  get("/square/:user_number", { :controller => "calculations", :action => "square" })
  get("/square_root/:user_number", { :controller => "calculations", :action => "square_root" })
end
