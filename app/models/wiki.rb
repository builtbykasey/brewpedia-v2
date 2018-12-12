class Wiki < ActiveRecord::Base
  belongs_to :user
  has_many :collaborators
  has_many :users, through: :collaborators

  default_scope { order('created_at DESC') }

  scope :visible_to, -> (user) do
    return all if user.premium? || user.admin?
    where(private: [false, nil])
  end

  validates :blend_name, length: { minimum: 1 }, presence: true
  validates :notes, length: { minimum: 1 }, presence: true

  extend FriendlyId
  friendly_id :blend_name, use: :slugged

end
