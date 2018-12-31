class Question < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :answers, dependent: :destroy
=begin
  validates :title, presence: true, length: { in: 5..40 }
  validates :body, presence: true, length: { in: 15..800 }
  validates :pd_tag_id, presence: true
  validates :tech_tag_id, presence: true
=end

end
