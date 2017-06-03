class Wiki < ActiveRecord::Base
  belongs_to :user
  has_many :collaborators
  has_many :users, through: :collaborators

  default_scope { order('created_at DESC') }

  scope :visible_to, -> (user) do
    return all if user.premium? || user.admin?
    where(private: [false, nill])
  end

  validates :title, length: { minimum: 1 }, presence: true
  validates :body, length: { minimum: 1 }, presence: true

  extend FriendlyId
  friendly_id :title, use: :slugged

end
