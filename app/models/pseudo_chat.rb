class PseudoChat < ApplicationRecord
  validates :message, presence: true, length: { maximum: 30 }
  after_commit -> {broadcast_refresh_later_to 'pseudo-chats' }
end
