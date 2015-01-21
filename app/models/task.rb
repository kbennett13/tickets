class Task < ActiveRecord::Base
  belongs_to :parent, class_name: "Task"
  has_and_belongs_to_many :tags
  
  validates :name, presence: true
end
