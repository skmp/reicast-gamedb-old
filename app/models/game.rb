class Game < ActiveRecord::Base
  has_many :releases, dependent: :destroy

  accepts_nested_attributes_for :releases
end
