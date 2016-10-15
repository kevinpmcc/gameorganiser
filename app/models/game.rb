class Game < ActiveRecord::Base
  has_many :players
  has_many :users, through: :players
  belongs_to :boardgame
end
