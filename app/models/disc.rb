class Disc < ActiveRecord::Base
  belongs_to :version

 # validates :version_id, presence: true
end
