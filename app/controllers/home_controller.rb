class HomeController < ApplicationController

  def index


    @crypto = StartScrap.new.perform



      @value = params["crypto_form"]


  end

  def getdata
  end
end
