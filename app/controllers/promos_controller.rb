class PromosController < ApplicationController
  def create
    @promo = Promo.new(promo_params)
    @promo.user = current_user
    if current_user.promos.where(active: true).count == 0 && @promo.save!
      cookies[:promo] = { value: (Time.now + (60 * @promo.t_minutes)).httpdate, expires: @promo.t_minutes.minutes }
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def promo_params
    params.require(:promo).permit(:t_minutes)
  end
end
