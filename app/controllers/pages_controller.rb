class PagesController < ApplicationController
  def index
    @username = params[:username]
    render 'pages/index' #необязательный параметр(по умолчанию это и так срендериться)
  end
end