class Promo < ApplicationRecord
  belongs_to :user
  validates :t_minutes, inclusion: { in: 1..30 }
  after_commit :invalidate_promo_at_expiration


  def invalidate_promo_at_expiration
    InvalidatePromoWorker.perform_at(self.t_minutes.minutes.from_now, self.id)
  end
end
