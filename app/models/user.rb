class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :wikis, dependent: :destroy
  has_many :collaborators
  has_many :wiki_collabs, source: 'wiki', through: :collaborators

  before_save { self.email = email.downcase }
  before_save :set_default_role, :if => :new_record?

  enum role: [:standard, :premium, :admin]
  # after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :standard
  end

end
