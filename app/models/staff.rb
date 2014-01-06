class Staff < ActiveRecord::Base
  module Roles
    ADMIN = "admin"
    EDITOR = "editor"
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :posts

end
