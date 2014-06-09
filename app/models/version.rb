class Version < ActiveRecord::Base
  has_many :discs, dependent: :destroy
  belongs_to :release

  accepts_nested_attributes_for :discs
end
