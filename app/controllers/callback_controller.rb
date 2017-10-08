class CallbackController < ApplicationController
  def index
     @env=request.env
  end
end
