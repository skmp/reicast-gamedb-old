class Release < ActiveRecord::Base
  has_many :versions, dependent: :destroy
  belongs_to :game

  accepts_nested_attributes_for :versions
end
