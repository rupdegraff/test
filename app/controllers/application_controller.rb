class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def process_name
    @name = params["name"]
    if @name == "Ross"
      @message = "Hey, "
    else
      @message = "Hello, "
    end
  end
  
  def get_city
  end
  
  def process_city
    
    if params["city"] == "Chicago"
      @message = "Awesome"
    else
      @message = "...bummer"
    end
  end
end
