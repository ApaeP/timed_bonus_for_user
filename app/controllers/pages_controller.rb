class PagesController < ApplicationController
  def home
    @promos = current_user.promos
  end
end
