class PagesController < ApplicationController
  def index
    render 'pages/index' #необязательный параметр(по умолчанию это и так срендериться)
  end
end