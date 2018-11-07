class PagesController < ApplicationController
  def home
    @vinyls = Vinyl.all
  end
end
