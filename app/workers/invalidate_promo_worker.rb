class InvalidatePromoWorker
  include Sidekiq::Worker

  def perform(promo_id)
    Promo.find(promo_id).update(active: false)
  end
end
